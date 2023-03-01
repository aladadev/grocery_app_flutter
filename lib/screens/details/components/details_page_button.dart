import 'package:flutter/material.dart';

class DetailsPageBtn extends StatelessWidget {
  const DetailsPageBtn({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10,
            color: Color.fromARGB(255, 141, 141, 141),
          ),
          BoxShadow(
            offset: Offset(0, -5),
            blurRadius: 10,
            color: Color.fromARGB(255, 237, 236, 236),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: Colors.green,
      ),
    );
  }
}
