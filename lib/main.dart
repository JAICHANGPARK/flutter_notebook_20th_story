import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1174_cosmetics_app/cosmetics_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    ProviderScope(
      child: CosmeticsApp(),
    ),
  );
}
