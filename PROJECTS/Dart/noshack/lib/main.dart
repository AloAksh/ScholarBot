import 'package:flutter/material.dart';
import 'package:noshack/pages/add_edit_email.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:AddMail(),
    );
  }
}

