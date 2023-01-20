import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/change_course.dart';

class MyCouses extends StatelessWidget {
  final String courses;
  MyCouses({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ChangeCourse>(context, listen: false)
            .changeSubjects(courses); //making methods to changeNotifer
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        height: 60,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 26, 237, 11),
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
        ),
        child: Center(
            child: Text(
          "$courses",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
