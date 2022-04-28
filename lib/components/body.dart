import 'package:flowers/components/fetured_plants.dart';
import 'package:flowers/components/header_with_searchbox.dart';
import 'package:flowers/components/recommend_plants.dart';
import 'package:flowers/components/title_with_more_bbtn.dart';
import 'package:flowers/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: TitleWithMoreBtn(title: "Sana Özel", press: () {}),
          ),
          const RecommendPlants(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: TitleWithMoreBtn(title: "Öne Çıkanlar", press: () {}),
          ),
         const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}



