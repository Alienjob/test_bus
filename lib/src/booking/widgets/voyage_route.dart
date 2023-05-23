import 'package:flutter/material.dart';
import 'package:test_bus/src/theme/theme_data.dart';
import 'package:timeline_tile/timeline_tile.dart';

enum _VoyageTileType { start, middle, end }

class VoyageRoute extends StatelessWidget {
  const VoyageRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: const <Widget>[
          _VoyageTile(
              city: 'Казань',
              date: '27 мая, 15:00',
              place: 'Автовокзал',
              type: _VoyageTileType.start),
          _VoyageTileSpacer(),
          _VoyageTile(
              city: 'Нижнекамск',
              date: '28 мая, 15:00',
              place: 'Автовокзал',
              type: _VoyageTileType.end),
        ],
      ),
    );
  }
}

class _VoyageTile extends StatelessWidget {
  const _VoyageTile({
    required this.city,
    required this.date,
    required this.place,
    required this.type,
  });

  final String city;
  final String date;
  final String place;
  final _VoyageTileType type;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      isFirst: type == _VoyageTileType.start,
      isLast: type == _VoyageTileType.end,
      indicatorStyle: const IndicatorStyle(
          width: 20,
          padding: EdgeInsets.all(6),
          indicator: _RoutePointIndicator()),
      endChild: _RightChild(city: city, date: date, place: place),
      beforeLineStyle: const LineStyle(
        color: gray41,
      ),
      afterLineStyle: const LineStyle(
        color: gray41,
      ),
    );
  }
}

class _VoyageTileSpacer extends StatelessWidget {
  const _VoyageTileSpacer();

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      indicatorStyle: IndicatorStyle(
          padding: EdgeInsets.all(6),
          indicator: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DecoratedBox(
                  decoration: BoxDecoration(color: gray41),
                  child: SizedBox(
                    width: 4,
                    height: 15,
                  )),
            ],
          )),
      endChild: SizedBox(height: 30),
      isFirst: false,
      isLast: false,
      beforeLineStyle: const LineStyle(
        color: gray41,
      ),
      afterLineStyle: const LineStyle(
        color: gray41,
      ),
    );
  }
}

class _RoutePointIndicator extends StatelessWidget {
  const _RoutePointIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      child: Stack(
        children: const [
          Center(
            child: Icon(
              size: 20,
              Icons.circle_outlined,
              color: gray6,
            ),
          ),
          Center(
            child: Icon(
              size: 10,
              Icons.circle,
              color: gray6,
            ),
          ),
        ],
      ),
    );
  }
}

class _RightChild extends StatelessWidget {
  const _RightChild({
    Key? key,
    required this.city,
    required this.date,
    required this.place,
  }) : super(key: key);

  final String city;
  final String date;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          city,
          style: ts14500,
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Text(date),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(
                Icons.circle,
                color: blue1,
                size: 3,
              ),
            ),
            Text(place),
          ],
        ),
      ],
    );
  }
}
