import 'package:flutter_test/flutter_test.dart';
import 'package:gorone/core/models/manga.dart';
import 'package:gorone/core/models/chapter.dart';
import 'package:gorone/core/models/page.dart';
import 'package:gorone/core/models/reading_progress.dart';

void main() {
  test('Models instantiate with strict types', () {
    const manga = Manga(
      id: '1',
      sourceId: 'test_source',
      title: 'Berserk',
      coverUrl: 'https://example.com/cover.jpg',
      genres: ['Action', 'Dark Fantasy'],
    );

    const chapter = Chapter(
      id: 'c1',
      mangaId: '1',
      sourceId: 'test_source',
      title: 'Chapter 1',
      number: 1.0,
      url: 'https://example.com/c1',
    );

    const page = Page(url: 'https://example.com/p1.jpg', index: 0);

    final progress = ReadingProgress(
      mangaId: '1',
      chapterId: 'c1',
      lastPageRead: 5,
      lastReadDate: DateTime.now(),
    );

    expect(manga.title, 'Berserk');
    expect(manga.genres.length, 2);
    expect(chapter.number, 1.0);
    expect(page.index, 0);
    expect(progress.lastPageRead, 5);
  });
}
