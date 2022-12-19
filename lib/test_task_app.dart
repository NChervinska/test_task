import 'package:flutter/material.dart';
import 'package:test_task/ui/home_page.dart';

/// An application that uses Material Design
class TestTaskApp extends StatelessWidget {
  /// Constructor
  const TestTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
