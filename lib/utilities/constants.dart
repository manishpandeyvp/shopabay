import 'package:flutter/material.dart';

const darkColor = Color(0xFFDA4453);

const lightColor = Color(0xFFED5565);

const pcolor = Color(0xFFFFFFFF);

const kEmailInputDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.alternate_email,
    color: pcolor,
  ),
  hintText: 'Enter your email',
  hintStyle: TextStyle(
    color: pcolor,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: pcolor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: pcolor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kPassInputDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.lock,
    color: pcolor,
  ),
  hintText: 'Enter your password',
  hintStyle: TextStyle(
    color: pcolor,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: pcolor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: pcolor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kUserNameInputDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.person,
    color: pcolor,
  ),
  hintText: 'Enter your email',
  hintStyle: TextStyle(
    color: pcolor,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: pcolor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: pcolor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
