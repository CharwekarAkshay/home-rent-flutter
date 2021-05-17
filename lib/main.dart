import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_rent/constants.dart';
import 'package:room_rent/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

// Design Inspiration:  https://dribbble.com/shots/15662604/attachments/7456953?mode=media


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'House Rent',
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
