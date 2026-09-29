// manga_detail_screen.dart
import 'package:flutter/material.dart';

class MangaDetailScreen extends StatelessWidget {
  const MangaDetailScreen({super.key, required this.mangaId});

  final String mangaId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manga')),
      body: Center(child: Text('Manga detail: $mangaId')),
    );
  }
}
