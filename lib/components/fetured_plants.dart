import 'package:flowers/constants.dart';
import 'package:flutter/material.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard(
      {Key? key,
        required this.image,
        required this.press
      }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    child : Column(
      children: [
        SizedBox(
          height: 180,
          width: 150,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image))),
      ),
    );
  }
}
class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
              image: "assets/images/cicek4.jpg",
              press: (){}),
          FeaturedPlantCard(
              image: "assets/images/cicek3.jpg",
              press: (){}),
          FeaturedPlantCard(
              image: "assets/images/cicek2.jpg",
              press: (){}),
          FeaturedPlantCard(
              image: "assets/images/cicek1.jpg",
              press: (){}),
          FeaturedPlantCard(
              image: "assets/images/lavanta.jpg",
              press: (){}),
        ],
      ),
    );
  }
}