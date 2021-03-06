import 'package:flutter/material.dart';
import 'package:shopabay/utilities/constants.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        centerTitle: true,
        title: Text(
          'My Account',
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
            'Still needs to be implemented',
            style: TextStyle(
              color: darkColor,
            ),
          ),
        ),
      ),
    );
  }
}
