import 'package:duettest/size_config.dart';
import 'package:flutter/material.dart';

import 'info.dart';
import 'profile_menu_item.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Info(
            image: "assets/images/haseeb.png",
            name: "Haseeb Rehman",
            email: "Jhondoe01@gmail.com",
          ),
          SizedBox(height: SizeConfig.defaultSize! * 2), //20
          ProfileMenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "Saved Recipes",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/chef_color.svg",
            title: "Super Plan",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/language.svg",
            title: "Change Language",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/info.svg",
            title: "Help",
            press: () {},
          ),
        ],
      ),
    );
  }
}
