import 'package:flutter/material.dart';
import 'package:petapp/configuration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      padding: EdgeInsets.only(top: 50, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage("images/avatar.jpg"),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  Emir Gökdemir",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  Active Status",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: drawerItem
                .map((element) => Row(
                      children: <Widget>[
                        Icon(
                          element["icon"],
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          element["title"],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 3,
                              fontSize: 13),
                        ),
                      ],
                    ))
                .toList(),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 2,
                height: 10,
                color: Colors.white,
              ),
              Text(
                "LOG OUT",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
