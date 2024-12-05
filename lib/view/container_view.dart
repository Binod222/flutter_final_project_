import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomRight,
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amberAccent,
              border: Border.all(color: Colors.black, width: 2)),
          child: const Text(
            "I am a container",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      )),
    );
  }
}
