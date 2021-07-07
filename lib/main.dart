import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: FoodPage(),
  ));
}

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade500,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade700,
        title: Center(
          child: Text(
            '今天吃什麼?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 4.0,
            ),
          ),
        ),
      ),
      body: Food(),
    );
  }
}

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  int foodNumber = 1;
  String foodName = '火鍋';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            foodName,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset('images/food$foodNumber.png'),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            child: Text(
              'Start',
              style: TextStyle(fontSize: 30),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(200.0),
              primary: Colors.red,
            ),
            onPressed: () {
              setState(() {
                foodNumber = Random().nextInt(7) + 1;
                switch (foodNumber) {
                  case 1:
                    foodName = '火鍋';
                    break;
                  case 2:
                    foodName = '義大利麵';
                    break;
                  case 3:
                    foodName = '炒飯';
                    break;
                  case 4:
                    foodName = '咖哩飯';
                    break;
                  case 5:
                    foodName = '披薩';
                    break;
                  case 6:
                    foodName = '麥當勞';
                    break;
                  case 7:
                    foodName = '壽司';
                    break;
                }
              });
            },
          )
        ],
      ),
    );
  }
}
