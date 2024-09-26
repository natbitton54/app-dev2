import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Makes status bar transparent
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
    ));
    return MaterialApp(
      home: Task1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  int _counter = 1;

  void increment() {
    setState(() => _counter++);
  }

  void decrement() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  double _addToCart() {
    double price = 4.99;
    double tax = 1.15;
    double total = (_counter * price) * tax;

    if (_counter > 0) {
      setState(() {
        _counter = 1; // Reset the counter to 1
      });
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      // Image
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 15, left: 20),
                          child: Image.asset(
                            "img/strawberry.jpg",
                            height: 270,
                            width: 375,
                            fit: BoxFit.contain,
                            // color: Colors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 20,
                        right: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10),
                                minimumSize: Size(50, 50),
                                backgroundColor: Colors.white.withOpacity(0.9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: Icon(
                                Icons.arrow_back,
                                size: 34,
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10),
                                minimumSize: Size(50, 50),
                                backgroundColor: Colors.white
                                    .withOpacity(0.9), // Slightly transparent
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite_border,
                                size: 34,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.amber,
                        size: 20,
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.circle,
                        color: Colors.grey,
                        size: 13,
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.circle,
                        color: Colors.grey,
                        size: 13,
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.circle,
                        color: Colors.grey,
                        size: 13,
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.circle,
                        color: Colors.grey,
                        size: 13,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 30),
                      child: Text(
                        "Strawberry",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 28),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 17, top: 0),
                      child: Text(
                        "325ml, Price",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Use center alignment
                      children: [
                        Text(
                          "\$4.99",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(width: 100),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () => decrement(),
                          child: Icon(
                            Icons.remove,
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(width: 2),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(10),
                            minimumSize: Size(50, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.black12),
                            ),
                            disabledBackgroundColor: Colors.white,
                          ),
                          onPressed: null,
                          child: Text(
                            "$_counter",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),

                        SizedBox(width: 2),
                        // Space between the buttons
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () => increment(),
                          child: Icon(
                            Icons.add,
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 21, top: 12),
                          child: Text(
                            "Product Details",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8, top: 12),
                      child: Container(
                        width: 350, // Ensures it takes available space
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Nutritions",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black)),
                          SizedBox(width: 210),
                          Text(
                            "100g",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Reviews",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black)),
                          SizedBox(width: 158),
                          Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, top: 33, right: 10),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            double total = _addToCart();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Amount you need to pay: \$${total.toStringAsFixed(2)}",
                                  style: TextStyle(fontSize: 18),
                                ),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          },
                          child: Text(
                            "ADD TO CART",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
