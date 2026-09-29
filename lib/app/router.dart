// lib/app/router.dart
import 'package:go_router/go_router.dart';

import '../features/downloads/downloads_screen.dart';
import '../features/library/library_screen.dart';
import '../features/manga_detail/manga_detail_screen.dart';
import '../features/reader/reader_screen.dart';
import '../features/search/search_screen.dart';
import '../features/settings/settings_screen.dart';

/// Single source of truth for navigation.
/// Created lazily once; never rebuilt (rebuilding would discard the stack).
final GoRouter appRouter = GoRouter(
  initialLocation: '/library',
  routes: [
    GoRoute(path: '/library', builder: (_, _) => const LibraryScreen()),
    GoRoute(path: '/search', builder: (_, _) => const SearchScreen()),
    GoRoute(path: '/downloads', builder: (_, _) => const DownloadsScreen()),
    GoRoute(path: '/settings', builder: (_, _) => const SettingsScreen()),
    GoRoute(
      path: '/manga/:mangaId',
      builder: (_, state) =>
          MangaDetailScreen(mangaId: state.pathParameters['mangaId']!),
    ),
    GoRoute(
      path: '/reader/:chapterId',
      builder: (_, state) =>
          ReaderScreen(chapterId: state.pathParameters['chapterId']!),
    ),
  ],
);
