import 'package:docemomento/colors.dart';
import 'package:flutter/material.dart';

import 'nav_bar_button.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 60,
        decoration: const BoxDecoration(
          color: navBarColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              45,
            ),
          ),
        ),
      ),
      Positioned.fill(
        top: -25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                index = 0;
              }),
              child: NavBarButton(
                icon: 'assets/home.png',
                text: 'Home',
                isSelected: index == 0,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            GestureDetector(
              onTap: () => setState(() {
                index = 1;
              }),
              child: NavBarButton(
                icon: 'assets/search.png',
                text: 'Search',
                isSelected: index == 1,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            GestureDetector(
              onTap: () => setState(() {
                index = 2;
              }),
              child: NavBarButton(
                icon: 'assets/premium.png',
                text: 'Premium',
                isSelected: index == 2,
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
