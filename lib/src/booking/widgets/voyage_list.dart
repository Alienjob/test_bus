import 'package:flutter/material.dart';
import 'package:test_bus/src/booking/widgets/voyage_card.dart';
import 'package:test_bus/src/theme/theme_data.dart';

class VoyageList extends StatelessWidget {
  const VoyageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: gray3,
        child: ListView(
          children: [
            VoyageCard(index: 0),
            VoyageCard(index: 0),
            VoyageCard(index: 0),
            VoyageCard(index: 0),
            VoyageCard(index: 0),
            VoyageCard(index: 0),
            VoyageCard(index: 0),
          ],
        ));
  }
}
