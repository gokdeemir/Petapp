import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petapp/configuration.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.blueGrey,
                )),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 62),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/avatar.jpg"),
                              ),
                            ),
                            Column(
                              children: [
                                Text("Emir Gökdemir",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  "Owner",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text("March 3, 2022",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                     textAlign: TextAlign.end),
                                Text("", style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                  "My job requires moving to another country. I don't have the opportunity to take the cat with me. I am looking for good people who will shelter my Sola.",
                                  overflow: TextOverflow.fade,
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.share, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: 1,
              child: Image.asset(
                "images/pet-cat2.png",
                scale: 1.6,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: shadows,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Sola",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.mail,
                            color: primaryColor,
                          ),
                          onPressed: () {},
                        ),
                      ]),
                  Text(
                    "Abyssinian Cat",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                  Text(
                    "2 years old",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 8),
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.location_on,
                              color: primaryColor),
                          onPressed: () {}),
                      Text(
                        "Distance: 3.6km",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      boxShadow: shadows,
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: EdgeInsets.all(20),
                    child: Icon(Icons.favorite_border, color: Colors.white),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: shadows,
                        color: primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          "Adoption",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 20),
                    ),
                  ),
                ],
              ),
              height: 100,
              decoration: BoxDecoration(
                boxShadow: shadows,
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
