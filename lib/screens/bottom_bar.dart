import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_now/screens/home/home_screen.dart';
import 'package:travel_now/screens/search/search_screen.dart';
import 'package:travel_now/screens/tickets/ticket_screen.dart';
import 'package:travel_now/utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget> [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text("Profile")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Styles.primaryColor,
        unselectedItemColor: Colors.blueGrey,
        items: const [
        BottomNavigationBarItem(icon: Icon(
            FluentSystemIcons.ic_fluent_duo_home_lock_regular
        ),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_duo_home_lock_filled),
            label: "Home"
        ),
        BottomNavigationBarItem(icon: Icon(
            FluentSystemIcons.ic_fluent_search_regular
        ),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search"
        ),
        BottomNavigationBarItem(icon: Icon(
            FluentSystemIcons.ic_fluent_ticket_regular
        ),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets"
        ),
        BottomNavigationBarItem(icon: Icon(
            FluentSystemIcons.ic_fluent_person_accounts_regular
        ),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
            label: "Profile"
        ),
        // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ],),
    );
  }
}
