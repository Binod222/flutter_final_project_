import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            MyCard(
              text: "THis is card 1",
              color: Colors.red,
            ),
            MyCard(
              text: "THis is card 2",
              color: Colors.blue,
            ),
            MyCard(
              text: "THis is card 3",
              color: Colors.purple,
            ),
            MyCard(
              text: "THis is card 4",
              color: Colors.green,
            ),
            MyCard(
              text: "THis is card 5",
              color: Colors.blue,
            ),
          ],
        ),
      )),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: color ?? Colors.amber,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Center(child: Text(text)),
      ),
    );
  }
}
