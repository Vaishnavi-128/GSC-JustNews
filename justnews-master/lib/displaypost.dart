import 'package:flutter/material.dart';
import 'package:justnews/postselection.dart';

void main() {
  runApp(displaypost());
}

class displaypost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white, // Set white as primary color
      ),
      home: PostSelectionPage(),
    );
  }
}

class PostSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set app bar background to black
        title: Text('Admin DashBoard', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(context, "adminlogin");
          },
        ),
      ),
      body: ListView.builder(
        itemCount: 1, // Specify the item count as 1
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the desired page when the list item is tapped
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => postsel()));
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/bsnl.jpeg'), // Image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'BSNL Mobile Company Faces Allegations of Worker Rights Violations',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
