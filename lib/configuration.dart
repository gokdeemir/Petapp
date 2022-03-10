import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = const Color(0xff416d6d);

List<BoxShadow> shadows= [
  BoxShadow(color: Colors.grey.shade400, blurRadius: 30, offset: Offset(0,10)),
];

// data
List<Map> categories = [
  {"name": "Cat", "iconPath": "images/cat.png"},
  {"name": "Dog", "iconPath": "images/dog.png"},
  {"name": "Horse", "iconPath": "images/horse.png"},
  {"name": "Parrot", "iconPath": "images/parrot.png"},
  {"name": "Rabbit", "iconPath": "images/rabbit.png"},
];

// data
List<Map> drawerItem = [
  {"icon": FontAwesomeIcons.paw, "title": "Adoption"},
  {"icon": FontAwesomeIcons.plus, "title": "Add Pet"},
  {"icon": Icons.favorite, "title": "Favorites"},
  {"icon": Icons.mail, "title": "Donation"},
  {"icon": FontAwesomeIcons.userAlt, "title": "Profile"},
];
