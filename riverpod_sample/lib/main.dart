import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ui/pattern_one.dart';
import 'ui/pattern_two.dart';
import 'ui/pattern_three.dart';
import 'ui/pattern_for.dart';

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
