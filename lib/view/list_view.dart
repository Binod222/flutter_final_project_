import 'package:flutter_first_project/model/student.dart';
import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final items = [
    const DropdownMenuItem(value: 'Janakpur', child: Text("Janakpur")),
    const DropdownMenuItem(value: 'Kathmandu', child: Text("Kathmandu")),
    const DropdownMenuItem(value: 'Pokhara', child: Text("Pokhara")),
  ];

  List<Student> lstStudents = [];
  String? selectedCity;

  //controllers
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _firstNameController,
              decoration: const InputDecoration(labelText: "Enter first Name"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _lastNameController,
              decoration: const InputDecoration(labelText: "Enter second Name"),
            ),
            const SizedBox(
              height: 40,
            ),
            DropdownButtonFormField(
              items: items,
              onChanged: (value) {},
              decoration: const InputDecoration(
                  labelText: "Select City", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Student student = Student(
                    firstName: _firstNameController.text.trim(),
                    lastName: _lastNameController.text.trim(),
                    city: selectedCity!,
                  );
                  setState(() {
                    lstStudents.add(student);
                  });
                },
                child: const Text("Add Student"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("View Student"),
              ),
            ),
            // Display student details in listview
            lstStudents.isEmpty
                ? const Text("Data xaina")
                : Expanded(
                    child: ListView.builder(
                    itemCount: lstStudents.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            '${lstStudents[index].firstName} ${lstStudents[index].lastName}'),
                        subtitle: Text(lstStudents[index].city),
                        trailing: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete)),
                      );
                    },
                  )),
          ],
        ),
      ),
    );
  }
}
