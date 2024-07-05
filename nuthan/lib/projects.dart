import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Projects',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            ProjectItem(
              title: 'Flutter Portfolio App',
              description: 'A personal portfolio app built with Flutter.',
              technologies: ['Flutter', 'Dart'],
            ),
            ProjectItem(
              title: 'personal Portfolio',
              description:
                  'An online shopping app developed using Flutter and Firebase.',
              technologies: ['Flutter', 'Firebase', 'State Management'],
            ),
            // Add more project items as needed
          ],
        ),
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;

  ProjectItem(
      {required this.title,
      required this.description,
      required this.technologies});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(description),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children:
              technologies.map((tech) => Chip(label: Text(tech))).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
