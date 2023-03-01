import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedScrolling extends StatelessWidget {
  const FeaturedScrolling({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
              imageLink:
                  'https://images.unsplash.com/photo-1479064312651-24524fb55c0e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjF8NDI5NTg3MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          FeaturedPlantCard(
              imageLink:
                  'https://images.unsplash.com/photo-1648794913409-1dd182a686f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjZ8NDI5NTg3MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          FeaturedPlantCard(
              imageLink:
                  'https://images.unsplash.com/photo-1664107014454-3d5758bc32e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Mjl8NDI5NTg3MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          FeaturedPlantCard(
              imageLink:
                  'https://images.unsplash.com/photo-1570563590151-8ec5747f3d47?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzZ8NDI5NTg3MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          FeaturedPlantCard(
              imageLink:
                  'https://images.unsplash.com/photo-1659382146978-17dbf4051320?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NDN8NDI5NTg3MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          FeaturedPlantCard(
              imageLink:
                  'https://images.unsplash.com/photo-1663353668307-06d9c49094ca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NDZ8NDI5NTg3MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          FeaturedPlantCard(
              imageLink:
                  'https://images.unsplash.com/photo-1619922141822-8972ce55b44b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NjV8NDI5NTg3MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    super.key,
    required this.imageLink,
  });
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding,
      ),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            imageLink,
          ),
        ),
      ),
    );
  }
}
