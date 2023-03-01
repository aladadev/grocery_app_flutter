import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/bottom_navigation_bar.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNav(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SizedBox(
          height: 25,
          child: SvgPicture.asset(
            'assets/icons/menu.svg',
          ),
        ),
      ),
    );
  }
}
