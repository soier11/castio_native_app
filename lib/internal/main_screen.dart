import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:castio/constants.dart';

import 'package:castio/internal/bottom_nav_bar.dart';
import 'package:castio/screens/sign/sign_screen.dart';
import 'package:castio/screens/home/home_screen.dart';
import 'package:castio/screens/home2/home_screen.dart';
import 'package:castio/screens/home3/home_screen.dart';

class MainScreen extends StatefulWidget {
  // final String title;

  // MainScreen(this.title);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  // final String title;

  _MainScreen();
  List<Widget> pages;

  // bottom index
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    pages = [
      HomeScreen(),
      Home2Screen(),
      Home3Screen(),
      SignInScreen()
      // Placeholder(),
    ];

    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return new Scaffold(
      appBar: buildAppBar(),
      body: new Column(
        children: <Widget>[
          // new AppBarScreen(title),
          _buildGridView(),
        ],
      ),
      bottomNavigationBar: new BottomNavScreen(
        onPressed: onTabTapped,
      ),
    );
  }

  AppBar buildAppBar() {
    var size = MediaQuery.of(context).size;
    return AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu_black.svg"),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset("assets/images/user.png"),
            padding: EdgeInsets.all(0),
            // tooltip: 'User Menus',
            onPressed: () {},
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
        ]);
  }

  _buildGridView() {
    return Flexible(
      fit: FlexFit.tight,
      child: pages[_currentIndex],
    );
  }
}
