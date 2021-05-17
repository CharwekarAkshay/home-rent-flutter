import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_rent/constants.dart';
import 'package:room_rent/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldColor,
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
