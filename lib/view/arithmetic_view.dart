import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  int first = 0;
  int second = 0;
  int result = 0;

  // global key for form state
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  first = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter First No',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter first no";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (value) {
                  second = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Second No";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Result : $result',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        result = first + second;
                      });
                    }
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        result = first - second;
                      });
                    }
                  },
                  child: const Text('Subtraction'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        result = first * second;
                      });
                    }
                  },
                  child: const Text('Multiplication'),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
