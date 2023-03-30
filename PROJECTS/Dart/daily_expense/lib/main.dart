// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Expenza",
      scrollBehavior: ScrollBehavior(androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
    );
  }
}