import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -20),
            blurRadius: 30,
            color: Colors.lightGreen.shade200,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
