import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/mycourses.dart';
import 'provider/change_course.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ChangeCourse(),
    child: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70, left: 20, right: 20),
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
              ),
              child: Center(
                  child: Text(
                "we learning" +
                    " " +
                    Provider.of<ChangeCourse>(context)
                        .subjects, //grabe the variable
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
            ),
            MyCouses(
              courses: "Gex",
            ),
            MyCouses(
              courses: "provider",
            ),
            MyCouses(
              courses: "BlogC",
            ),
          ],
        ),
      ),
    );
  }
}
