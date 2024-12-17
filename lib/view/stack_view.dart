import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stack View",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.amber,
            child: const Text("I am first container"),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Text("I am second container"),
            ),
          ),
          const Positioned(
              bottom: -20,
              left: 0,
              right: 0,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/picture1.jpg"),
              )),
        ],
      ),
    );
  }
}
