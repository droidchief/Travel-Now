import 'package:flutter/material.dart';

class RingGrey extends StatelessWidget {
  const RingGrey({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: Colors.grey),
      ),
    );
  }
}