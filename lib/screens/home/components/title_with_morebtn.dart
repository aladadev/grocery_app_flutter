import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    super.key,
    required this.title,
    required this.onPress,
  });
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding,
      ),
      child: Row(
        children: [
          TitleWithUnderline(
            title: title,
          ),
          Spacer(),
          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: onPress,
            icon: Icon(
              Icons.add_box_rounded,
              color: Colors.white,
            ),
            label: Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithUnderline extends StatelessWidget {
  const TitleWithUnderline({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding / 4),
      child: Container(
        height: 30,
        child: Stack(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                color: Color.fromARGB(255, 134, 198, 60),
                height: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
