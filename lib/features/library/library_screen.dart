import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Library')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Your library is empty'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => context.push('/search'),
              child: const Text('Browse sources'),
            ),
          ],
        ),
      ),
    );
  }
}
