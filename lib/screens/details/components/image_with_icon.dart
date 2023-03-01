import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/details_page_button.dart';

class DetailsImgWithIcon extends StatelessWidget {
  const DetailsImgWithIcon({
    super.key,
    required this.imageLink,
  });

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                        ),
                      ),
                    ),
                    Spacer(),
                    DetailsPageBtn(
                      icon: Icons.sunny,
                    ),
                    DetailsPageBtn(
                      icon: Icons.add_reaction_rounded,
                    ),
                    DetailsPageBtn(
                      icon: Icons.airline_seat_individual_suite_sharp,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(-10, 10),
                  blurRadius: 60,
                  color: Color.fromARGB(255, 139, 154, 111),
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(imageLink),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
