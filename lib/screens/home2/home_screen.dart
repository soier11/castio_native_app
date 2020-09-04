import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:castio/components/my_bottom_nav_bar.dart';
import 'package:castio/screens/home2/components/body.dart';

class Home2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
