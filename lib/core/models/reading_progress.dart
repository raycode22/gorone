class ReadingProgress {
  final String mangaId;
  final String chapterId;
  final int lastPageRead;
  final DateTime lastReadDate;

  const ReadingProgress({
    required this.mangaId,
    required this.chapterId,
    required this.lastPageRead,
    required this.lastReadDate,
  });
}
