import 'package:flutter/material.dart';

class DetailScreenBottom extends StatelessWidget {
  const DetailScreenBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 80,
          child: TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_rounded,
              color: Colors.white,
            ),
            label: Text(
              'Buy Now!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.description_rounded,
              color: Colors.black,
            ),
            label: Text(
              'Description',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
