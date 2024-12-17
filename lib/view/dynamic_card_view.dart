import 'package:flutter_first_project/core/common/my_card.dart';
import 'package:flutter_first_project/core/common/mysnackbar.dart';
import 'package:flutter/material.dart';

class DynamicCardView extends StatelessWidget {
  const DynamicCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 20; i++) ...{
              GestureDetector(
                onDoubleTap: () {
                  showMySnackBar(context, 'Card $i');
                },
                child: MyCard(
                  text: 'This is Card $i',
                  color: i % 2 == 0 ? Colors.green : Colors.amber,
                ),
              )
            }
          ],
        ),
      )),
    );
  }
}
