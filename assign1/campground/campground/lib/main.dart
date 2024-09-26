import 'package:flutter/material.dart';

void main() {
  runApp(const Campground());
}

class Campground extends StatelessWidget {
  const Campground({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Campground App",
      home: const CampgroundPage(),
    );
  }
}

class CampgroundPage extends StatelessWidget {
  const CampgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/campground.jpg'),
          Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nat's Lake Campground",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red, size: 34),
                        SizedBox(width: 4),
                        Text("4.2", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Montreal, Quebec",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(13),
                          child: Icon(Icons.call, color: Colors.blue, size: 30),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "CALL",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(13),
                          child: Icon(Icons.near_me, color: Colors.blue, size: 30),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "ROUTE",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(13),
                          child: Icon(Icons.share, color: Colors.blue, size: 30),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "SHARE",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                      "Illo sunt, omnis temporibus consectetur quae sint at exercitationem adipisci veniam "
                      "sequi laboriosam soluta, iure commodi, vero asperiores minima. Aspernatur esse, explicabo "
                      "perferendis cupiditate nobis veritatis, labore, quae atque ipsam cum dolorem.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
