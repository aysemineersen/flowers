import 'package:flowers/screens/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(image: image,),
    );
  }
}

