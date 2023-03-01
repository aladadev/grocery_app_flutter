import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      height: size.height * 0.18,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding + 25,
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Hello! alaDaDev',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                const Icon(
                  Icons.water_damage_rounded,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              padding: const EdgeInsets.only(
                left: kDefaultPadding,
              ),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 30,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search_rounded,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
