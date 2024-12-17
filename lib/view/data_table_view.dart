import 'package:flutter/material.dart';
import 'package:flutter_first_project/model/student.dart';

class DataTableView extends StatefulWidget {
  const DataTableView({super.key});

  @override
  State<DataTableView> createState() => _DataTableViewState();
}

class _DataTableViewState extends State<DataTableView> {
  List<Student> lstStudent = [
    Student(firstName: "Binod", lastName: "Khadka", city: "Kathmandu"),
    Student(firstName: "Atom", lastName: "Saha", city: "Kathmandu"),
    Student(firstName: "Nirajan", lastName: "Mahato", city: "Kathmandu"),
    Student(firstName: "Bibek", lastName: "Guptil", city: "Kathmandu"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DataTable(
            headingRowColor:
                WidgetStateColor.resolveWith((states) => Colors.amber),
            border: TableBorder.all(color: Colors.black),
            columns: const [
              DataColumn(label: Text('Fname')),
              DataColumn(label: Text('City')),
              DataColumn(label: Text('Action')),
            ],
            rows: [
              for (Student student in lstStudent) ...{
                DataRow(cells: [
                  DataCell(Text(student.firstName)),
                  DataCell(Text(student.city)),
                  DataCell(Expanded(
                    child: Center(
                      child: Wrap(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                lstStudent.remove(student);
                              });
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  )),
                ])
              }
            ]),
      )),
    );
  }
}
