import 'package:flutter/material.dart';
import 'package:shopabay/utilities/constants.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        gradient: LinearGradient(colors: [darkColor, lightColor]),
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          child: Text(
            'There is no item in your cart',
            style: TextStyle(
              color: darkColor,
            ),
          ),
        ),
      ),
    );
  }
}
