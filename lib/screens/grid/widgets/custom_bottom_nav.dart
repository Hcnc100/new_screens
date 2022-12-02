import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _getItemNav(icon: Icons.calendar_today_outlined, title: "Hola"),
        _getItemNav(icon: Icons.pie_chart_outline, title: "Hola"),
        _getItemNav(icon: Icons.supervised_user_circle_outlined, title: "Hola"),
      ],
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  BottomNavigationBarItem _getItemNav({
    required IconData icon,
    required String title,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: title,
    );
  }
}
