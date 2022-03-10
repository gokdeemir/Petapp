import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petapp/detailScreen.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawer = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: shadows,
        borderRadius: BorderRadius.circular(isDrawer ? 40 : 0),
      ),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawer
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawer = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 230;
                              yOffset = 80;
                              scaleFactor = 0.7;
                              isDrawer = true;
                            });
                          },
                        ),
                  Column(
                    children: [
                      Text("Location"),
                      Row(
                        children: [
                          IconButton(
                              icon:
                                  Icon(Icons.location_on, color: primaryColor),
                              onPressed: () {}),
                          Text("Turkey"),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/avatar.jpg"),
                  ),
                ],
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  prefixIcon: Icon(Icons.search, color: primaryColor),
                  hintText: "Search Pet",
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            ),
            Container(
              height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: primaryColor,
                                boxShadow: shadows,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(
                              categories[index]["iconPath"],
                              height: 50,
                              width: 50,
                              color: Colors.grey,
                            ),
                          ),
                          Text(categories[index]["name"])
                        ],
                      ),
                    );
                  }),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(seconds: 2),
                        pageBuilder: (_, __, ___) => DetailScreen()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: shadows,
                          ),
                          margin: EdgeInsets.only(top: 50),
                        ),
                        Align(
                          child: Hero(
                            tag: 1,
                            child: Image.asset("images/pet-cat2.png"),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Container(
                      height: 200,
                      margin: EdgeInsets.only(top: 70, bottom: 20),
                      padding: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadows,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
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
                          SizedBox(
                            height: 10,
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
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: shadows,
                        ),
                        margin: EdgeInsets.only(top: 50),
                      ),
                      Align(
                        child: Image.asset("images/pet-cat1.png"),
                      )
                    ],
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(top: 70, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadows,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
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
                            SizedBox(
                              height: 10,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
