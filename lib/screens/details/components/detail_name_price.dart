import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class DetailNamePriceCountry extends StatelessWidget {
  const DetailNamePriceCountry({
    super.key,
    required this.name,
    required this.country,
    required this.price,
  });

  final String name;
  final String country;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$name \n",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "$country \n",
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
          )
        ],
      ),
    );
  }
}
