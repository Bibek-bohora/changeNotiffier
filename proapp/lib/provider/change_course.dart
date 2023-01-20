import 'package:flutter/material.dart';

//changeNotifier
class ChangeCourse extends ChangeNotifier {
  //variable
  String subjects = "";
  //method
  void changeSubjects(String newSub) {
    //the was changes
    subjects = newSub;
    notifyListeners();
  }
}
