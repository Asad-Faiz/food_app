// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'src/screens/start/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
// mene pehli screens dekhin or font static add kia h google se ni lia assets ke throug kia // Acha tume App ka name change krna sikhata hun
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.white,
          // errorColor: Colors.red,
          fontFamily: 'Poppins',// /yeh
          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                subtitle2: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                button: const TextStyle(
                  color: Colors.white,
                ),
              ),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  subtitle1: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          )),
      home: const SafeArea(
        child: SplashScreen(),
      ),
    );
  }
}
