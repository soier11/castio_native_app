import 'package:flutter/material.dart';
import 'package:castio/constants.dart';

class BottomNavScreen extends StatefulWidget {
  final Function onPressed;
  BottomNavScreen({this.onPressed});

  @override
  _BottomNavScreen createState() => _BottomNavScreen(onPressed);
}

class _BottomNavScreen extends State<BottomNavScreen> {
  final Function onPressed;

  _BottomNavScreen(this.onPressed);

  List<Widget> pages;

  // bottom index
  int _currentIndex = 0;

  void _onPressed(int index) {
    setState(() {
      _currentIndex = index;
    });
    onPressed(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      height: 64.0,
      // color: MyTheme.Colors.background,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyBottomTab(
            icon: Icons.home,
            text: "Home",
            isSelected: _currentIndex == 0,
            onPressed: () {
              setState(() {
                _onPressed(0);
              });
            },
          ),
          MyBottomTab(
            icon: Icons.search,
            text: "검색",
            isSelected: _currentIndex == 1,
            onPressed: () {
              setState(() {
                _onPressed(1);
              });
            },
          ),
          MyBottomTab(
            icon: Icons.video_library,
            text: "라이브러리",
            isSelected: _currentIndex == 2,
            onPressed: () {
              setState(() {
                _onPressed(2);
              });
            },
          ),
          MyBottomTab(
            icon: Icons.person,
            text: "프로필",
            isSelected: _currentIndex == 3,
            onPressed: () {
              setState(() {
                _onPressed(3);
              });
            },
          ),
        ],
      ),
    );
  }
}

class MyBottomTab extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  final Function onPressed;

  MyBottomTab({this.icon, this.text, this.isSelected, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        width: isSelected ? 120.0 : 80.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: isSelected ? kPrimaryColor : kBackgroundColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(icon,
                size: 28.0,
                color: isSelected ? kBackgroundColor : Colors.black12),
            isSelected
                ? Text(
                    text,
                    style: TextStyle(
                        fontSize: text.length > 4 ? 12.0 : 14.0,
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w600),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
