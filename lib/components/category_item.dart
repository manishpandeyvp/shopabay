import 'package:flutter/material.dart';
import 'package:shopabay/utilities/constants.dart';

class CategoryItem extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final IconData icon;

  CategoryItem(
      {this.backgroundColor = lightColor,
      @required this.size,
      @required this.icon,
      this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      focusColor: backgroundColor,
      disabledColor: backgroundColor,
      hoverColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(size),
      ),
      color: backgroundColor,
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Text(
            'Product',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
