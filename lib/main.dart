import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tf08r_0024_reto_app_request/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}
