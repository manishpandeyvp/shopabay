import 'package:flutter/material.dart';
import 'package:shopabay/utilities/constants.dart';

class Logo extends StatelessWidget {
  final double size;
  Logo({this.size});
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'SHOPA',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: size,
                color: pcolor,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'bay',
              style: TextStyle(
                fontSize: size,
                color: pcolor,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
