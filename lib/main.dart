import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_notebook_20th_story/ep1191_salmage_app/salmage_app.dart';

main() {
  runApp(
    ProviderScope(
      child: SalmageApp(),
    ),
  );
}
