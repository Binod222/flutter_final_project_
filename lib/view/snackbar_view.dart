import 'package:flutter_first_project/common/mysnackbar.dart';
import 'package:flutter/material.dart';

class SnackbarView extends StatefulWidget {
  const SnackbarView({super.key});

  @override
  State<SnackbarView> createState() => _SnackbarViewState();
}

class _SnackbarViewState extends State<SnackbarView> {
  _showSnackBar() {
    showMySnackBar(context, "Show button 1");
  }

  _showSnackBar2() {
    showMySnackBar(context, "show button 2", color: Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showSnackBar(),
              child: const Text("Show buttton 1"),
            ),
            ElevatedButton(
              onPressed: () => _showSnackBar2(),
              child: const Text("Show buttton 2"),
            ),
          ],
        ),
      )),
    );
  }
}
