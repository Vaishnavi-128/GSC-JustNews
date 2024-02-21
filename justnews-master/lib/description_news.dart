import 'package:flutter/material.dart';

import 'home.dart';

class description_news extends StatefulWidget {
  const description_news({super.key});

  @override
  State<description_news> createState() => _description_newsState();
}

class _description_newsState extends State<description_news> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set app bar background to black
        title: Text('News Description', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => home()),
            );
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: 350,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/modi.jpeg"))),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PM Modi in Jammu on \nTuesday, to dedicate \nprojects worth 32,000 \ncrore to nation",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "On the eve of his visit to Jammu, prime minister Narendra Modi on Monday said that the projects that he will dedicate to the nation during the day-long visit, are a ‘big boost’ to the region's ‘all-round development.’“I look forward to being in Jammu tomorrow to inaugurate key development works which will boost ‘Ease of Living.’ It will also be a landmark day for the education sector as various institutions including IITs and IIMs will get permanent campuses,” he posted on X (formerly Twitter).",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
