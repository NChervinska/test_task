import 'package:flutter/material.dart';
import 'package:test_task/resources/app_strings.dart';
import 'package:test_task/utils/color_generator_utils.dart';

/// Home Page with random color generator
class HomePage extends StatefulWidget {
  /// Constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? backgroundColor;

  @override
  void didChangeDependencies() {
    _setRandomColor();
    super.didChangeDependencies();
  }

  void _setRandomColor() {
    setState(() {
      backgroundColor = generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _setRandomColor,
      child: Scaffold(
        backgroundColor: backgroundColor?.withOpacity(1),
        body: const Center(
          child: Text(AppStrings.heyThere),
        ),
      ),
    );
  }
}
