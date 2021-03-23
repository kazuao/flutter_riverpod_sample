import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// やり方3: 複数の値をwatchできる
// 通常のProviderではできなかった
final firstStringProvider = Provider((ref) => 'First');
final secondStringProvider = Provider((ref) => 'Second');

class MyApp3 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final first = watch(firstStringProvider);
    final second = watch(secondStringProvider);

    return MaterialApp(
      title: 'Riverpod Sample',
      home: Scaffold(
        appBar: AppBar(title: const Text('Riverpod Sample')),
        body: Center(
          child: Column(
            children: [
              Text(first),
              Text(second),
            ],
          ),
        ),
      ),
    );
  }
}
