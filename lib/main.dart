import 'package:flutter/material.dart';
import 'package:bmiapp/inputpage.dart';

void main ()=> runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFF0A0D22),  //add oxff to use
      //  accentColor: Color(0XFFeb1555),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
     // textTheme:TextTheme(body1:TextStyle(color: Colors.white) ),

      ),
home: InputPage(),
     
    );
    
  }
}
