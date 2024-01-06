import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.title, required this.onTapSeeAll,
  });

  final String title;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
        ),),
        TextButton(onPressed: onTapSeeAll, child: const Text('See All'))
      ],
    );
  }
}