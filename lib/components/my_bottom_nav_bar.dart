import 'package:flowers/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.filter_vintage_outlined),
              color: kPrimaryColor),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.favorite),
            color: kPrimaryColor,),
          IconButton(
            onPressed: (){},
            icon: FaIcon(
                FontAwesomeIcons.userNinja
            ),
            color: kPrimaryColor,),
        ],
      ),
    );
  }
}