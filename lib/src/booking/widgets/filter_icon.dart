import 'package:flutter/material.dart';
import 'package:test_bus/src/theme/theme_data.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.filter_alt_outlined,
          color: gray6,
        ));
  }
}
