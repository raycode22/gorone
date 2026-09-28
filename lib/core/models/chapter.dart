class Chapter {
  final String id;
  final String mangaId;
  final String sourceId;
  final String title;
  final double number;
  final String? scanlator;
  final DateTime? uploadDate;
  final String url;

  const Chapter({
    required this.id,
    required this.mangaId,
    required this.sourceId,
    required this.title,
    required this.number,
    this.scanlator,
    this.uploadDate,
    required this.url,
  });
}
