import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/pages/alert_page.dart';
import 'package:untitled3/pages/home_page.dart';
import 'package:untitled3/pages/reto_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Components 2",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.manropeTextTheme(

        )
      ),

      home: RetoPage(),
    );
  }
}
