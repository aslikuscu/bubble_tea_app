import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        tabActiveBorder: Border.all(color: Colors.white),
        gap: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'shop',
          ),
          GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
          )
        ],
      ),
    );
  }
}
