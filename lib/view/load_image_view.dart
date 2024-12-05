import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width * .3,
            child: Image.asset(
              'assets/images/picture-1.jpg',
              fit: BoxFit.fill,
            )),
      )),
    );
  }
}
