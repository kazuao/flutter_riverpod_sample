import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// やり方2: widget内に配置する
class IncrementNotifier extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }
}

final incrementProvider = ChangeNotifierProvider((ref) => IncrementNotifier());

class MyApp2 extends StatelessWidget {
  @override
  // ScopedReaderを追加する
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Sample',
      home: Scaffold(
        appBar: AppBar(title: const Text('Riverpod Sample')),
        body: Center(
          child: Consumer(
            builder: (context, watch, child) {
              // builder配下でwatchする
              final incrementNotifier = watch(incrementProvider);
              return Text(incrementNotifier.value.toString());
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // watchがないので、観測はできないが、最初にcontextから読める
            context.read(incrementProvider).increment();
          },
        ),
      ),
    );
  }
}
