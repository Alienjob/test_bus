import 'package:flutter/material.dart';
import 'package:test_bus/src/theme/theme_data.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FilterTab extends StatelessWidget {
  const FilterTab({
    super.key,
    required this.title,
    required this.value,
    required this.isActive,
  });

  final String title;
  final String value;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AutoSizeText(
          maxLines: 1,
          title,
          overflow: TextOverflow.fade,
          style: ts14400,
        ),
        Text(value, style: !isActive ? ts14400 : null),
      ],
    );
  }
}
