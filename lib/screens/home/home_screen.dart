import 'package:flutter/material.dart';
import 'package:room_rent/constants.dart';

import 'components/header_component.dart';
import 'components/navigation_button_component.dart';
import 'components/search_component.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = "/";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding / 2,
          ),
          child: Column(
            children: [
              HeaderComponent(),
              SizedBox(height: defaultPadding * 2),
              SearchComponent(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          bottom: defaultPadding,
          left: defaultPadding,
          right: defaultPadding,
        ),
        height: 60,
        decoration: BoxDecoration(
          color: fontColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavigationButtonComponent(
              icon: Icons.home,
              selectedIcon: Icons.home_filled,
              isActive: _currentIndex == 0,
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            NavigationButtonComponent(
                icon: Icons.favorite_border,
                selectedIcon: Icons.favorite,
                isActive: _currentIndex == 1,
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                }),
            NavigationButtonComponent(
                icon: Icons.shopping_cart_outlined,
                selectedIcon: Icons.shopping_cart,
                isActive: _currentIndex == 2,
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                }),
            NavigationButtonComponent(
                icon: Icons.account_circle_outlined,
                selectedIcon: Icons.account_circle,
                isActive: _currentIndex == 3,
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
