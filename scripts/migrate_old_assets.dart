/// Usage:
///   dart run scripts/migrate_old_assets.dart
///   dart run scripts/migrate_old_assets.dart --apply
///
/// The script scans `assets/old/*.svg`, classifies each asset as icon or image,
/// normalizes names to kebab-case, prefixes them with `icon-` or `image-`,
/// and prints the resulting target mapping.
/// Add `--apply` to move and rename files into the target directories.

import 'dart:io';
import 'package:path/path.dart' as p;

const oldAssetsDir = 'assets/old';
const iconBaseDir = 'assets/icons/svg';
const imageBaseDir = 'assets/images/svg';

const colorKeywords = [
  'colored', 'color', 'blue', 'red', 'green', 'yellow', 'purple', 'pink', 'orange', 'black', 'white', 'grey', 'gray', 'multicolor', 'multi-color', 'filled', 'fill', 'bold', 'primary', 'secondary', 'gradient', 'neon', 'light', 'dark', 'gold', 'silver', 'purple', 'turquoise', 'cyan', 'magenta', 'brown', 'maroon', 'teal', 'olive', 'lime', 'navy', 'violet', 'amber', 'emerald', 'scarlet', 'peach', 'coral', 'mint'
];

const imageKeywords = [
  'illustration', 'illustrasi', 'illustrations', 'illustrasi-', 'illustration-', 'logo', 'placeholder', 'background', 'illustration_', 'illustrasi_', 'vector', 'scene', 'hero', 'banner', 'splash', 'empty', 'illustration', 'illustrasi', 'no-data', 'empty-data', 'error', 'success', 'warning', 'meeting', 'room', 'profile', 'qr', 'broken', 'offline', 'loading', 'help', 'info', 'checklist', 'donation', 'video', 'wallpaper', 'background', 'app', 'illustrasi', 'ilustrasi'
];

const englishTokenMap = {
  'illustrasi': 'illustration',
  'ilustrasi': 'illustration',
  'belum': 'not-yet',
  'belom': 'not-yet',
  'berhasil': 'success',
  'gagal': 'failed',
  'kehadiran': 'attendance',
  'pengajuan': 'submission',
  'sesi': 'session',
  'menunggu': 'waiting',
  'tukar': 'exchange',
  'poin': 'points',
  'jumlah': 'amount',
  'belanja': 'shopping',
  'kosong': 'empty',
  'koreksi': 'correction',
  'kerja': 'work',
  'waktu': 'time',
  'ruang': 'room',
  'mobil': 'car',
  'karyawan': 'employee',
  'kantor': 'office',
  'perjalanan': 'trip',
  'acara': 'event',
  'dasar': 'base',
  'pesan': 'order',
  'riwayat': 'history',
  'peta': 'map',
  'tiket': 'ticket',
  'aktif': 'active',
  'nonaktif': 'inactive',
  'bantuan': 'help',
  'kembali': 'back',
  'aman': 'secure',
  'biaya': 'cost',
  'dokumen': 'document',
  'upload': 'upload',
  'download': 'download',
  'pengguna': 'user',
  'keranjang': 'cart',
  'makanan': 'food',
  'keluar': 'logout',
  'masuk': 'login',
  'setelan': 'settings',
  'pengaturan': 'settings',
  'notifikasi': 'notification',
  'koneksi': 'connection',
  'terputus': 'disconnected',
};

void main(List<String> args) {
  final apply = args.contains('--apply');
  final root = Directory(oldAssetsDir);

  if (!root.existsSync()) {
    stderr.writeln('Error: folder "$oldAssetsDir" tidak ditemukan.');
    exit(1);
  }

  final files = root
      .listSync(followLinks: false)
      .whereType<File>()
      .where((file) => file.path.toLowerCase().endsWith('.svg'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  if (files.isEmpty) {
    stdout.writeln('Tidak ada file SVG di "$oldAssetsDir" untuk diproses.');
    return;
  }

  final destinationNames = <String, int>{};
  final plannedMoves = <_MovePlan>[];

  for (final file in files) {
    final originalName = p.basename(file.path);
    final rawBase = p.basenameWithoutExtension(originalName);
    final classification = _classifyName(rawBase);
    final cleanedBase = _normalizeName(rawBase);
    final targetFolder = classification.isIcon ? _iconSubFolder(classification.iconCategory) : imageBaseDir;
    final prefix = classification.isIcon ? 'icon' : 'image';
    final normalizedBase = _ensureUniqueBase('$prefix-$cleanedBase', destinationNames, targetFolder);
    final targetFile = '$targetFolder/$normalizedBase.svg';
    plannedMoves.add(_MovePlan(file.path, targetFile, classification));
  }

  stdout.writeln('=== Asset migration plan ===');
  for (final plan in plannedMoves) {
    stdout.writeln('${plan.source} => ${plan.destination} (${plan.classification.label})');
  }

  if (!apply) {
    stdout.writeln('Dry run selesai. Tambahkan flag --apply untuk memindahkan/rename file.');
    return;
  }

  for (final plan in plannedMoves) {
    final destFile = File(plan.destination);
    final destDir = destFile.parent;
    if (!destDir.existsSync()) {
      destDir.createSync(recursive: true);
    }

    if (destFile.existsSync()) {
      stderr.writeln('Warning: ${plan.destination} sudah ada. Mengubah nama tujuan.');
      final uniqueDestination = _findUniqueFilePath(plan.destination);
      plan.destination = uniqueDestination;
    }

    File(plan.source).renameSync(plan.destination);
  }

  stdout.writeln('\n✅ Selesai. File sudah dipindahkan/di-rename.');
}

class _MovePlan {
  final String source;
  String destination;
  final _AssetClassification classification;

  _MovePlan(this.source, this.destination, this.classification);
}

class _AssetClassification {
  final bool isIcon;
  final _IconCategory iconCategory;

  _AssetClassification(this.isIcon, this.iconCategory);

  String get label {
    if (!isIcon) return 'image/svg';
    return 'icon/svg/${iconCategory.name}';
  }
}

enum _IconCategory { base, colored, menu, outlined, solid }

_AssetClassification _classifyName(String rawName) {
  final lower = rawName.toLowerCase();
  final tokens = _splitTokens(lower);

  final isImage = tokens.any((token) => imageKeywords.contains(token)) ||
      tokens.any((token) => token.startsWith('illustration') || token.startsWith('illustrasi')) ||
      lower.contains('illustration') ||
      lower.contains('illustrasi') ||
      lower.contains('logo') ||
      lower.contains('placeholder') ||
      lower.contains('background') ||
      lower.contains('empty') ||
      lower.contains('success') ||
      lower.contains('error') ||
      lower.contains('warning');

  final isIcon = !isImage || lower.startsWith('icon') || lower.startsWith('ic') || lower.startsWith('menu') || lower.startsWith('tabler') || lower.startsWith('paperplane');

  if (!isIcon) {
    return _AssetClassification(false, _IconCategory.base);
  }

  final category = _detectIconCategory(lower, tokens);
  return _AssetClassification(true, category);
}

_IconCategory _detectIconCategory(String lower, List<String> tokens) {
  if (tokens.any((token) => token == 'menu' || token.startsWith('menu-') || token.contains('menu'))) {
    return _IconCategory.menu;
  }
  if (tokens.any((token) => token.contains('outlined') || token.contains('outline') || token.contains('line'))) {
    return _IconCategory.outlined;
  }
  if (tokens.any((token) => token.contains('solid') || token.contains('filled') || token.contains('fill') || token.contains('bold'))) {
    return _IconCategory.solid;
  }
  if (tokens.any((token) => colorKeywords.contains(token) || token.contains('color') || token.contains('blue') || token.contains('red') || token.contains('green') || token.contains('yellow'))) {
    return _IconCategory.colored;
  }
  return _IconCategory.base;
}

String _iconSubFolder(_IconCategory category) {
  switch (category) {
    case _IconCategory.colored:
      return '$iconBaseDir/colored';
    case _IconCategory.menu:
      return '$iconBaseDir/menu';
    case _IconCategory.outlined:
      return '$iconBaseDir/outlined';
    case _IconCategory.solid:
      return '$iconBaseDir/solid';
    case _IconCategory.base:
    default:
      return iconBaseDir;
  }
}

String _normalizeName(String rawName) {
  final name = rawName
      .replaceAll('_', '-')
      .replaceAll(RegExp(r'\s+'), '-')
      .replaceAll(RegExp(r'-+'), '-')
      .replaceAll(RegExp(r'(^icon-?|^ic-?|^icons-?|^image-?|^img-?|^illustration-?|^illustrasi-?|^tabler-?|^svg-)'), '');

  final tokens = _splitTokens(name);
  final translatedTokens = tokens.map(_translateToken).where((token) => token.isNotEmpty).toList();

  final cleaned = translatedTokens.join('-').replaceAll(RegExp(r'-{2,}'), '-').trim();
  final normalized = cleaned.isEmpty ? 'file' : cleaned;

  return normalized;
}

String _translateToken(String token) {
  if (englishTokenMap.containsKey(token)) {
    return englishTokenMap[token]!;
  }
  return token;
}

List<String> _splitTokens(String input) {
  return input.split(RegExp(r'[-_\s]+')).where((token) => token.isNotEmpty).toList();
}

String _ensureUniqueBase(String baseName, Map<String, int> destinationNames, String targetFolder) {
  var candidate = baseName;
  var count = destinationNames['$targetFolder|$candidate'] ?? 0;
  if (count > 0) {
    candidate = '${baseName}-${count + 1}';
  }

  while (true) {
    final key = '$targetFolder|$candidate';
    if (!destinationNames.containsKey(key)) {
      destinationNames[key] = (count > 0 ? count + 1 : 1);
      return candidate;
    }
    count += 1;
    candidate = '${baseName}-${count}';
  }
}

String _findUniqueFilePath(String path) {
  var candidate = path;
  var index = 1;
  while (File(candidate).existsSync()) {
    final dir = p.dirname(path);
    final base = p.basenameWithoutExtension(path);
    final extension = p.extension(path);
    candidate = p.join(dir, '$base-$index$extension');
    index += 1;
  }
  return candidate;
}
