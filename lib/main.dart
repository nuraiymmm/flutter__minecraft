import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minecraft Character'),
        ),
        body: Center(
          child: MinecraftCard(),
        ),
      ),
    );
  }
}

class MinecraftCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MinecraftCharacter(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Creeper - моб из игры Minecraft, которого отличает взрывоопасность.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MinecraftCharacter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
      child: Stack(
        children: [
          Positioned(
            right: 25,
            top: 40,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 25,
            top: 40,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 150,
            child: Container(
              width: 100,
              height:40,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 80,
            top: 90,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
