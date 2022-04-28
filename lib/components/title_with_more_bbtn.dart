import 'package:flowers/constants.dart';
import 'package:flutter/material.dart';

import 'body.dart';


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({Key? key, required this.title, required this.press}) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleWithCustomUnderLine(
            text: title),
        ElevatedButton(
          onPressed: press(),
          child: Text("Daha fazla",
            style: TextStyle(
                color: Colors.white),),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  kPrimaryColor
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              )
          ),
        )
      ],
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    Key? key,
    required this.text}) :super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

