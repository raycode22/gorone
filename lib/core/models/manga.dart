enum MangaStatus { ongoing, completed, hiatus, cancelled, unknown }

class Manga {
  final String id;
  final String sourceId;
  final String title;
  final String coverUrl;
  final String? author;
  final String? artist;
  final String? description;
  final MangaStatus status;
  final List<String> genres;

  const Manga({
    required this.id,
    required this.sourceId,
    required this.title,
    required this.coverUrl,
    this.author,
    this.artist,
    this.description,
    this.status = MangaStatus.unknown,
    this.genres = const [],
  });
}
