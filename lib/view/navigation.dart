import 'package:flutter/material.dart';
import 'package:trip_ui/view/navpages/bar.dart';
import 'package:trip_ui/view/navpages/homee.dart';
import 'package:trip_ui/view/navpages/myaccount.dart';
import 'package:trip_ui/view/navpages/search.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    Homeee(),
    Bar(),
    Search(),
    MyAccount()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_customize_sharp),
                label: 'Home',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded),
                label: 'bar',
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'my account',
                backgroundColor: Colors.green),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.3),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 30,
          unselectedLabelStyle: TextStyle(fontFamily: "TitilliumWeb"),
          selectedLabelStyle: TextStyle(fontFamily: "TitilliumWeb"),
          onTap: _onItemTapped,
          elevation: 0),
      body: widgetOptions[_selectedIndex],
    );
  }
}
