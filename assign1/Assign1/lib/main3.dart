import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task3(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  int scoreA = 0;
  int scoreB = 0;

  void updateScores(String team, int points) {
    setState(() {
      if (team == "A") {
        scoreA += points;
      } else if (team == "B") {
        scoreB += points;
      }
    });
  }

  void reset() {
    setState(() {
      scoreA = 0;
      scoreB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basketball Points Counter",
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            Text(
                              "Team A",
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              "${scoreA}",
                              style: TextStyle(fontSize: 175),
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: () => updateScores('A', 1),
                                    child: Text(
                                      "Add 1 point",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                        shadowColor: Colors.deepOrange,
                                        minimumSize: Size(170, 45),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ))),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () => updateScores('A', 2),
                                    child: Text(
                                      "Add 2 point",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                        shadowColor: Colors.deepOrange,
                                        minimumSize: Size(170, 45),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ))),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () => updateScores('A', 3),
                                    child: Text(
                                      "Add 3 point",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                        shadowColor: Colors.deepOrange,
                                        minimumSize: Size(170, 45),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ))),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  VerticalDivider(),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Column(
                          children: [
                            Text(
                              "Team B",
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              "${scoreB}",
                              style: TextStyle(fontSize: 175),
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                    onPressed: () => updateScores('B', 1),
                                    child: Text(
                                      "Add 1 point",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                        shadowColor: Colors.deepOrange,
                                        minimumSize: Size(170, 45),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ))),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () => updateScores('B', 2),
                                    child: Text(
                                      "Add 2 point",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                        shadowColor: Colors.deepOrange,
                                        minimumSize: Size(170, 45),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ))),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () => updateScores('B', 3),
                                    child: Text(
                                      "Add 3 point",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                        shadowColor: Colors.deepOrange,
                                        minimumSize: Size(170, 45),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ))),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 112),
                child: ElevatedButton(
                    onPressed: () => reset(),
                    child: Text(
                      "Reset",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shadowColor: Colors.deepOrange,
                        minimumSize: Size(120, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ))),
              )
            ],
          )
        ],
      ),
    );
  }
}
