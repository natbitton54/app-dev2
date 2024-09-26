import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 3,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.redAccent,
            size: 32,
          ),
        ),
      ),
      body: Center(
        child: _buildGrid(),
      ),
    );
  }

  final List<Map<String, String>> categories = const [
    {"name": "Fruits", "image": "img/fruits.jpg"},
    {"name": "Vegetables", "image": "img/vegetables.jpg"},
    {"name": "Herbs", "image": "img/herbs.jpg"},
    {"name": "Spices", "image": "img/spices.jpg"},
    {"name": "Tea and Coffee", "image": "img/tea&coffee.jpg"},
    {"name": "Oils", "image": "img/oils.jpg"},
    {"name": "Processed Foods", "image": "img/processed-foods.jpg"},
    {"name": "Rice, Grains & Millets", "image": "img/rice-grains-millets.jpg"},
  ];

  Widget _buildGrid() => GridView.count(
        crossAxisCount: 2, // number of columns
        childAspectRatio: 1,
        padding: EdgeInsets.all(28),
        mainAxisSpacing: 12, // spacing between rows
        crossAxisSpacing: 12, // spacing between columns
        children: categories.map((category) {
          return GridTile(
            child: Container(
              padding: EdgeInsets.only(top: 35),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 204, 210, 1),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: ClipOval(
                      child: Container(
                        width: 85,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(category['image']!),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          category['name']!,
                          style: TextStyle(
                            color: Color.fromRGBO(166, 36, 54, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          );
        }).toList(),
      );
}
