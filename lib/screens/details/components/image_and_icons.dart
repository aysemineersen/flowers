import 'package:flowers/constants.dart';
import 'package:flowers/screens/details/components/icon_card.dart';
import 'package:flutter/material.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                  Spacer(),
                  IconCard(icon: Icons.wb_sunny_outlined),
                  IconCard(icon: Icons.thermostat_outlined),
                  IconCard(icon: Icons.water_drop),
                  IconCard(icon: Icons.air_rounded),
                ],
              ),
            )
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/lavanta.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}