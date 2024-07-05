import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Education',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            EducationItem(
              degree:
                  'Bachelor of Engineering in Information Science and Technology',
              school: 'Avharya Institute of Technology',
              year: '2021-2025',
            ),
            EducationItem(
              degree: '11th & 12th',
              school: 'Sharadhamba Independent Science PU college',
              year: '2019-2021',
            ),
            EducationItem(
              degree: 'High School',
              school: 'Chanukya Public School',
              year: '2016-2019',
            ),
            // Add more education items as needed
          ],
        ),
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String school;
  final String year;

  EducationItem(
      {required this.degree, required this.school, required this.year});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(degree,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(school),
        Text(year),
        SizedBox(height: 16),
      ],
    );
  }
}
