import 'package:flutter/material.dart';
import 'package:test_bus/src/theme/theme_data.dart';

class VoyageRouteTitle extends StatelessWidget {
  const VoyageRouteTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Казань - Нижнекамск',
      style: ts14400,
    );
  }
}
