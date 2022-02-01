import '../main.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;
  final VoidCallback tap;

  const ProfileListItem({
    Key? key,
    required this.icon,
    required this.text,
    this.hasNavigation = true,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialButton(
      child: Container(
        height: size.height * 0.09,
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.00,
        ).copyWith(bottom: size.height * 0.0),
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.height * 0.0),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: size.width * 0.07,
              color: Colors.black87,
            ),
            SizedBox(width: size.width * 0.07),
            Text(
              text,
              style: const TextStyle(
                fontFamily: "Barlow",
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black54,
              ),
            ),
            Spacer(),
            if (hasNavigation)
              Icon(
                LineAwesomeIcons.angle_right,
                size: size.width * 0.06,
                color: Colors.black87,
              ),
          ],
        ),
      ),
      onPressed: tap,
    );
  }
}
