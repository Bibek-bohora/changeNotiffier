import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCathelog extends StatefulWidget {
  const MyCathelog({super.key});

  @override
  State<MyCathelog> createState() => _MyCathelogState();
}

class _MyCathelogState extends State<MyCathelog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("myCathelog"),
    );
  }
}
