import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardItems = [
      {
        'title': 'Student Details',
        'icon': Icons.person,
        'route': '/student_details_view'
      },
      {'title': 'Calculator', 'icon': Icons.calculate, 'route': '/calculator'},
      {
        'title': 'Rich-Text',
        'icon': Icons.text_fields,
        'route': '/rich_text_view'
      },
      {
        'title': 'Cross Axis',
        'icon': Icons.format_align_center,
        'route': '/cross_axis_view'
      },
      {
        'title': 'Container',
        'icon': Icons.crop_square,
        'route': '/container_view'
      },
      {'title': 'Image View', 'icon': Icons.image, 'route': '/load_image_view'},
      {
        'title': 'Box Fill View',
        'icon': Icons.view_compact,
        'route': '/boxfill_view'
      },
      {
        'title': 'Flexible Expanded',
        'icon': Icons.space_bar,
        'route': '/flexible_expanded_view'
      },
      {
        'title': 'My Classwork',
        'icon': Icons.school,
        'route': '/my_classwork_view'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: dashboardItems.length,
            itemBuilder: (context, index) {
              final item = dashboardItems[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, item['route'] as String);
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item['icon'] as IconData,
                        size: 48,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        item['title'] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
