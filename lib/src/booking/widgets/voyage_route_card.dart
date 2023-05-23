import 'package:flutter/material.dart';
import 'package:test_bus/src/booking/widgets/back_icon.dart';
import 'package:test_bus/src/booking/widgets/filter_icon.dart';
import 'package:test_bus/src/booking/widgets/voyage_route_data.dart';
import 'package:test_bus/src/booking/widgets/voyage_route_title.dart';
import 'package:test_bus/src/theme/theme_data.dart';

class VoyageRouteCard extends StatelessWidget {
  const VoyageRouteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return //Container(
        Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: gray2, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const BackIcon(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      VoyageRouteTitle(),
                      VoyageRouteDate(),
                    ],
                  ),
                ),
                const FilterIcon(),
              ],
            ),
          )),
    );
  }
}
