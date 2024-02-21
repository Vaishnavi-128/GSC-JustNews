import 'package:badges/badges.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'description_news.dart';
import 'register.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'category.dart';
import 'popular.dart';

class homm extends StatefulWidget {
  @override
  State<homm> createState() => _hommState();
}

class _hommState extends State<homm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          //notification icon

          Row(
            children: [
              Expanded(
                // This widget is used to ensure the first container (search bar) takes up the available space properly
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: 3,
                      top: 14,
                      left: 20,
                      right: 20), // Adjusted right margin
                  padding: EdgeInsets.all(3),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFD2D5D2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Flexible(
                        // Wrapping the text field container with Flexible
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(left: 7),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Search here...",
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20, left: 1, top: 7),
                margin: EdgeInsets.only(left: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 2,
                        )
                      ]),
                  child: badges.Badge(
                    badgeStyle: BadgeStyle(
                      badgeColor: Colors.red,
                      padding: EdgeInsets.all(7),
                    ),
                    badgeContent: Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    ),
                    child: Icon(
                      CupertinoIcons.bell,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoriesWidget(),
                //PopularItemsWidget(),
              ],
            ),
          ),
          //Carouselslider

          Container(
              child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest News",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Container(
                  margin: EdgeInsets.only(bottom: 1),
                  //height: 300,
                  width: 500,
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: [
                          Container(
                            width: 400,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            width: 400,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img2.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            width: 400,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img3.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            width: 400,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img4.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            width: 400,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/img5.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 220.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 600),
                          viewportFraction: 1.0,
                        ),
                      ),
                    ],
                  ),
                ))
          ])),

          DisplayList(),
          // Container(
          //   padding: EdgeInsets.only(top: 20),
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(30),
          //           topRight: Radius.circular(30))),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       //CategoriesWidget(),
          //       PopularItemsWidget(),
          //     ],
          //   ),
          // )
        ],
      )),
    );
    throw UnimplementedError();
  }
}

class DisplayList extends StatefulWidget {
  const DisplayList({Key? key}) : super(key: key);

  @override
  State<DisplayList> createState() => _DisplayListState();
}

class _DisplayListState extends State<DisplayList> {
  final _ref = FirebaseDatabase.instance.ref("Posts");

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FirebaseAnimatedList(
        query: _ref,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          Map<dynamic, dynamic> mapData = {};

          if (snapshot.value != null) {
            (snapshot.value as Map<dynamic, dynamic>).forEach((key, value) {
              // print(key);
              // print(value);

              value.forEach((key1, value1) {
                mapData[key1] = value1.toString();
                print(key1);
                print(value1);
              });
            });
          }
// Assuming mapData["date"] is a String representing a date, for example: "2024-02-19"

          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 370,
                  // height: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 6)
                      ]),
                  child: Column(
                    children: [
                      Text(
                        mapData["headline"],
                        style: TextStyle(
                          fontSize: 15, // Set the font size
                          fontWeight: FontWeight.bold, // Set the font weight
                          color: Colors.white, // Set the text color
                          fontStyle: FontStyle.italic, // Set the font style
                          letterSpacing: 1.2, // Set the letter spacing
                          // Add more style properties as needed
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigate to the next page here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => description_news()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(4),
                          child: FadeInImage.assetNetwork(
                            placeholder: "assets/images/profile.png",
                            image: mapData["filepath"],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                mapData["time"],
                                style: TextStyle(
                                  fontSize: 14, // Set the font size
                                  fontWeight:
                                      FontWeight.bold, // Set the font weight
                                  color: Colors.white, // Set the text color
                                  fontStyle:
                                      FontStyle.normal, // Set the font style
                                  letterSpacing: 1.2, // Set the letter spacing
                                  // Add more style properties as needed
                                ),
                              ),
                              // Assuming mapData["date"] is a String representing a date, for example: "2024-02-19"

                              Text(
                                DateFormat('EEEE d MMM y').format(
                                  DateTime.parse(mapData["date"]),
                                ),
                                style: TextStyle(
                                  fontSize: 14, // Set the font size
                                  fontWeight:
                                      FontWeight.bold, // Set the font weight
                                  color: Colors.white, // Set the text color
                                  fontStyle:
                                      FontStyle.normal, // Set the font style
                                  letterSpacing: 1.2, // Set the letter spacing
                                  // Add more style properties as needed
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Navigator.pushNamed(context, "itemPage");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.comment,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Navigator.pushNamed(context, "itemPage");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.thumb_up,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "itemPage");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.poll,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );

          // return SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       Text(mapData["date"]),
          //       Text(mapData["desc"]),
          //       Text(mapData["headline"]),
          //       FadeInImage.assetNetwork(
          //         placeholder: "assets/images/profile.png",
          //         image: mapData["filepath"],
          //       ),
          //       Text(mapData["time"]),
          //     ],
          //   ),
          // );
        },
      ),
    );
  }
}


//
// class _DisplayListState extends State<DisplayList> {
//   final _ref = FirebaseDatabase.instance.ref("Posts");
//
//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       child: StreamBuilder(
//         stream: _ref.onValue,
//         builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
//           if (snapshot.hasData && snapshot.data!.value != null) {
//             Map<dynamic, dynamic> data = snapshot.data!.value;
//             List<Map<dynamic, dynamic>> dataList = [];
//
//             data.forEach((key, value) {
//               Map<dynamic, dynamic> mapData = {};
//
//               value.forEach((key1, value1) {
//                 mapData[key1] = value1.toString();
//               });
//
//               dataList.add(mapData);
//             });
//
//             return ListView.builder(
//               itemCount: dataList.length,
//               itemBuilder: (BuildContext context, int index) {
//                 Map<dynamic, dynamic> mapData = dataList[index];
//                 return SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Text(mapData["date"]),
//                       Text(mapData["desc"]),
//                       Text(mapData["headline"]),
//                       FadeInImage.assetNetwork(
//                         placeholder: "assets/images/profile.png",
//                         image: mapData["filepath"],
//                       ),
//                       Text(mapData["time"]),
//                     ],
//                   ),
//                 );
//               },
//             );
//           } else {
//             return Container(); // Placeholder for empty data or loading indicator
//           }
//         },
//       ),
//     );
//   }
// }

