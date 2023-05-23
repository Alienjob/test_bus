import 'package:flutter/material.dart';
import 'package:test_bus/src/booking/pages/voyages.dart';
import 'package:test_bus/src/theme/theme_data.dart';

class NavigatorBarPage extends StatefulWidget {
  NavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<NavigatorBarPage> createState() => _NavigatorBarPageState();
}

class _NavigatorBarPageState extends State<NavigatorBarPage> {
  int _selectedPage = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // Disable user iteration to change page programmatically only
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        // Repaint screen on page change
        onPageChanged: (value) => setState(() => _selectedPage = value),
        // Create pages
        children: List<Scaffold>.generate(4, (index) => _getPage(index: index)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.white, // <-- This works for fixed
        selectedItemColor: green,
        unselectedItemColor: gray7,
        currentIndex: _selectedPage,
        // Change page tap page number
        onTap: (value) => pageController.animateToPage(value,
            duration: Duration(microseconds: 300), curve: Curves.easeIn),
        // Create page numbers
        items: _createBottomOption(),
      ),
    );
  }

  List<BottomNavigationBarItem> _createBottomOption() {
    return List<BottomNavigationBarItem>.generate(4, (index) {
      var label = (index == 0)
          ? 'Поиск'
          : (index == 1)
              ? 'Создать'
              : (index == 2)
                  ? 'Поездки'
                  : (index == 3)
                      ? 'Профиль'
                      : '';
      var icon = (index == 0)
          ? Icons.search
          : (index == 1)
              ? Icons.add_circle_outline
              : (index == 2)
                  ? Icons.time_to_leave_sharp
                  : (index == 3)
                      ? Icons.person_2_outlined
                      : Icons.search;
      return BottomNavigationBarItem(label: label, icon: Icon(icon));
    });
  }

  _getPage({required int index}) => Scaffold(body: VoyagesPage());
}
