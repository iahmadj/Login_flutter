import 'package:flutter/material.dart';
import 'package:flutter_myapp/pages/home_page.dart';
import 'package:flutter_myapp/pages/login_page.dart';
import 'package:flutter_myapp/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
       fontFamily: GoogleFonts.lato().fontFamily,
       
        ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/login',
      routes: {
         MyRoutes.homeRoute: (context) => HomePage(),
         MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
