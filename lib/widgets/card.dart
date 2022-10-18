import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  const CardWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.all(2),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: color),
      child: const Icon(
        Icons.balance_outlined,
        size: 20,
        color: Colors.black12,
      ),
    );
  }
}
