import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_search.dart';
import 'package:plant_app/screens/home/components/title_with_morebtn.dart';
import 'package:plant_app/screens/home/components/vertical_scrolling_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSearch(size: size),
          TitleWithMoreButton(
            title: 'Recommended',
            onPress: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreButton(
            title: 'Featured Plants',
            onPress: () {},
          ),
          FeaturedScrolling(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
