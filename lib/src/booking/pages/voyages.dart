import 'package:flutter/material.dart';
import 'package:test_bus/src/booking/widgets/filter_tab.dart';
import 'package:test_bus/src/booking/widgets/voyage_list.dart';
import 'package:test_bus/src/booking/widgets/voyage_route_card.dart';
import 'package:test_bus/src/theme/theme_data.dart';

class VoyagesPage extends StatefulWidget {
  const VoyagesPage({
    super.key,
  });

  static const routeName = '/';

  @override
  State<VoyagesPage> createState() => _VoyagesPageState();
}

class _VoyagesPageState extends State<VoyagesPage>
    with SingleTickerProviderStateMixin {
  void filterHandler() {}

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final int tab = _tabController.index;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 113,
        backgroundColor: gray1,
        title: const VoyageRouteCard(),
        bottom: TabBar(
          onTap: (index) {
            setState(() {});
          },
          controller: _tabController,
          indicatorColor: green,
          labelColor: green,
          labelPadding: const EdgeInsets.all(0),
          tabs: <Widget>[
            Tab(
              child: FilterTab(title: 'Всё', value: '112', isActive: tab == 0),
            ),
            Tab(
              child: FilterTab(
                  title: 'С попутчиками', value: '105', isActive: tab == 1),
            ),
            Tab(
              child: FilterTab(
                  title: 'На автобусе', value: '7', isActive: tab == 2),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(child: VoyageList()),
          Center(child: VoyageList()),
          Center(child: VoyageList()),
        ],
      ),
    );
  }
}
