import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/bottom_details.dart';
import 'package:plant_app/screens/details/components/detail_name_price.dart';
import 'package:plant_app/screens/details/components/details_page_button.dart';
import 'package:plant_app/screens/details/components/image_with_icon.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key,
      required this.name,
      required this.country,
      required this.price,
      required this.imageLink});
  final String name, country, imageLink;
  final double price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailsImgWithIcon(imageLink: imageLink),
            DetailNamePriceCountry(name: name, country: country, price: price),
            DetailScreenBottom(),
          ],
        ),
      ),
    );
  }
}
