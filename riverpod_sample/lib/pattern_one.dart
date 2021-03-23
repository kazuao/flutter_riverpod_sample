import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// やり方1: StatelessWidget -> ConsumerWidget
final greetingProvider = Provider((ref) => 'Hello Riverpod!');

class MyApp1 extends ConsumerWidget {
  @override
  // ScopedReaderを追加する
  Widget build(BuildContext context, ScopedReader watch) {
    // watchに指定したものを監視する
    final greeting = watch(greetingProvider);

    return MaterialApp(
      title: 'Riverpod Sample',
      home: Scaffold(
        appBar: AppBar(title: const Text('Riverpod Sample')),
        body: Center(
          child: Text(greeting),
        ),
      ),
    );
  }
}
