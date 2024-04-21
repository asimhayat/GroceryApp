import 'package:firstpro/widgets/header_parts.dart';
import 'package:firstpro/widgets/items_display.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 15,
        ),
        // For header parts
        HeaderParts(),
        // For Body parts
        ItemsDisplay(),
      ],
    );
  }
}
