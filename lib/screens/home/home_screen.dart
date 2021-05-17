import 'package:flutter/material.dart';
import 'package:room_rent/constants.dart';

import 'components/header_component.dart';
import 'components/search_component.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = "/";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      ),
    );
  }
}


/**
 * 
 *  bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: fontColor,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.red,
          showSelectedLabels: false,
          
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'School',
            ),
          ],
        ),
      ),
 */