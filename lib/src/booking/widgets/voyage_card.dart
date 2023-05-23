import 'package:flutter/material.dart';
import 'package:test_bus/src/booking/widgets/voyage_route.dart';
import 'package:test_bus/src/theme/theme_data.dart';

class VoyageCard extends StatelessWidget {
  const VoyageCard({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Card(
        elevation: 45,
        color: Colors.white,
        shadowColor: cShadow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(width: 10),
                  VoyageRoute(),
                  VoyagePrice(),
                ],
              ),
              SizedBox(height: 20),
              Shipper()
            ],
          ),
        ),
      ),
    );
  }
}

class Shipper extends StatelessWidget {
  const Shipper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16),
        Icon(
          Icons.train_sharp,
          color: green,
        ),
        SizedBox(width: 10),
        Text(
          'ООО “БУРЕВЕСТНИК”',
          style: ts14400,
        ),
        Spacer(),
        Icon(
          Icons.qr_code,
          color: green,
          size: 24,
        ),
        SizedBox(
          width: 16,
        )
      ],
    );
  }
}

class VoyagePrice extends StatelessWidget {
  const VoyagePrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '514.80 ₽',
          style: ts14500.copyWith(color: green),
        ),
        SizedBox(
          width: 16,
        )
      ],
    );
  }
}
