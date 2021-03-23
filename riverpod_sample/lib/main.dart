import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pattern_one.dart';
import 'pattern_two.dart';
import 'pattern_three.dart';
import 'pattern_for.dart';

void main() {
  runApp(
    // Providerのscopeを全体にする
    ProviderScope(
      // child: MyApp1(),
      // child: MyApp2(),
      // child: MyApp3(),
      child: MyApp4(),
    ),
  );
}
