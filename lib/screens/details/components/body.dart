import 'package:flowers/constants.dart';
import 'package:flowers/screens/details/components/icon_card.dart';
import 'package:flowers/screens/details/components/image_and_icons.dart';
import 'package:flowers/screens/details/components/title_and_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(title: "Lavanta", country: "İtalya", price: 234),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                          ),
                        ),
                      )),
                  onPressed: () {},
                  child: const Text("Şimdi Al",
                  style: TextStyle(color: Colors.white,
                    fontSize: 16,
                  ),
                  ),
                ),
              ),
              Expanded(child:ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                  overlayColor: MaterialStateProperty.all<Color>(Colors.white),
                  shadowColor: MaterialStateProperty.all<Color>(kBackgroundColor),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),

              ),
                onPressed: () {},
                child: const Text("Açıklama",
                  style: TextStyle(color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),)
            ],
          )
        ],
      ),
    );
  }
}
