import 'package:flutter/material.dart';
import 'package:castio/constants.dart';

import 'package:castio/screens/sign/sign_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Castio',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: kTextColor).copyWith(
                  button: TextStyle(color: kPrimaryColor),
                  // headline:
                  //     TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
                ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInScreen(),
    );
  }
}
