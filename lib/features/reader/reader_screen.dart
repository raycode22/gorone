// reader_screen.dart — no AppBar: the reader will be immersive
import 'package:flutter/material.dart';

class ReaderScreen extends StatelessWidget {
  const ReaderScreen({super.key, required this.chapterId});

  final String chapterId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Reader: $chapterId')));
  }
}
