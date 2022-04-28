import 'package:flowers/constants.dart';
import 'package:flowers/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            size: size,
            title: "Lavanta",
            country: "İtalya",
            image: "assets/images/lavanta.jpg",
            press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                builder: (context) => const DetailsScreen(image: "assets/images/lavanta.jpg",),
              ),
              );
            },
            price: 234,
          ),
          RecommendPlantCard(
            size: size,
            title: "Begonya",
            country: "İspanya",
            image: "assets/images/cicek1.jpg",
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(image: "assets/images/cicek1.jpg",),
                ),
              );
            },
            price: 436,
          ),
          RecommendPlantCard(
            size: size,
            title: "Menekşe",
            country: "Türkiye",
            image: "assets/images/cicek2.jpg",
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(image: "assets/images/cicek2.jpg",),
                ),
              );
            },
            price: 436,
          ),
          RecommendPlantCard(
            size: size,
            title: "Orkide",
            country: "Japonya",
            image: "assets/images/cicek3.jpg",
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(image: "assets/images/cicek3.jpg"),
                ),
              );
            },
            price: 436,
          ),
          RecommendPlantCard(
            size: size,
            title: "Karanfil",
            country: "Rusya",
            image: "assets/images/cicek4.jpg",
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(image: "assets/images/cicek4.jpg",),
                ),
              );
            },
            price: 436,
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  RecommendPlantCard({Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press
  }) : super(key: key);

  final Size size;
  final String image, title, country;
  final int price;
  dynamic press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
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
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "₺$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}