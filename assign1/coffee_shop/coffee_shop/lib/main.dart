import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoffeeShop(),
    );
  }
}

class CoffeeShop extends StatefulWidget {
  const CoffeeShop({super.key});

  @override
  State<CoffeeShop> createState() => _CoffeeShopState();
}

class _CoffeeShopState extends State<CoffeeShop> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }
  void decrement() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  double payNow(){
    double coffeePrice = 3.5;
    double tax = 1.15;
    double totalPrice = (counter * coffeePrice) * tax;

  return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Coffee Shop",
          style: TextStyle(color: Colors.white, fontSize: 24)),
           backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/coffee_logo.jpg",
              width: 250.0,
              height: 265.0,
            ),
            SizedBox(height: 20,),
            Text("Select number of order(s)"),
            SizedBox(height: 30,),
            Text("Price of Coffee is 3.5\$"),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: decrement, child: Icon(Icons.remove)),
                SizedBox(width: 20,),
                Text("${counter}"),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: increment, child: Icon(Icons.add)),
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: counter >= 1 ? (){
              double total = payNow();
              ScaffoldMessenger.of(context).showSnackBar
                (SnackBar(
                  content: Text("Total to Pay: \$${total.toStringAsFixed(3)}"),
                duration: Duration(seconds: 5),
              ),
              );
            }
              : null,
                child: Text('Pay Now'),
              style: ElevatedButton.styleFrom(
                backgroundColor: counter >= 1 ? Colors.green : Colors.grey
              ),

            ),
          ],
        ),
      ),
    );
  }
}

