import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RecommenCard(
            name: 'Neem',
            country: 'bangladesh',
            pressFunc: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    name: 'Neem',
                    country: 'Bangladesh'.toUpperCase(),
                    price: 440,
                    imageLink:
                        'https://images.unsplash.com/photo-1477554193778-9562c28588c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGxhbnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=80',
                  ),
                ),
              );
            },
            price: 440,
            imageLink:
                'https://images.unsplash.com/photo-1477554193778-9562c28588c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGxhbnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
          ),
          RecommenCard(
            name: 'Neem',
            country: 'bangladesh',
            pressFunc: () {},
            price: 440,
            imageLink:
                'https://images.unsplash.com/photo-1446071103084-c257b5f70672?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGxhbnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
          ),
          RecommenCard(
            name: 'Neem',
            country: 'bangladesh',
            pressFunc: () {},
            price: 440,
            imageLink:
                'https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBsYW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          ),
          RecommenCard(
            name: 'Neem',
            country: 'bangladesh',
            pressFunc: () {},
            price: 440,
            imageLink:
                'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBsYW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          ),
          RecommenCard(
            name: 'Neem',
            country: 'bangladesh',
            pressFunc: () {},
            price: 440,
            imageLink:
                'https://images.unsplash.com/photo-1483794344563-d27a8d18014e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHBsYW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          ),
          RecommenCard(
            name: 'Neem',
            country: 'bangladesh',
            pressFunc: () {},
            price: 440,
            imageLink:
                'https://images.unsplash.com/photo-1502810365585-56ffa361fdde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHBsYW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          ),
        ],
      ),
    );
  }
}

class RecommenCard extends StatelessWidget {
  const RecommenCard({
    super.key,
    required this.price,
    required this.name,
    required this.country,
    required this.pressFunc,
    required this.imageLink,
  });
  final double price;
  final String name;
  final String country;
  final VoidCallback pressFunc;
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Container(
              height: size.height * 0.25,
              width: size.width * 0.4,
              child: Image.network(
                imageLink,
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onTap: pressFunc,
            child: Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: Color.fromARGB(130, 0, 0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$name\n".toUpperCase(),
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: Colors.lightGreen,
                                  ),
                        ),
                        TextSpan(
                          text: "$country\n".toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            color: kPrimaryColor.withOpacity(
                              0.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
