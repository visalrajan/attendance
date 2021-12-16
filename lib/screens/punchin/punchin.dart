import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PuchIn extends StatefulWidget {
  const PuchIn({Key? key}) : super(key: key);

  @override
  _PuchInState createState() => _PuchInState();
}

class _PuchInState extends State<PuchIn> {
  TimeOfDay? time =  TimeOfDay.now();
  DateTime? date = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(
          "${time!.hour.toString()}:${time!.minute.toString()}",
          style:  TextStyle(fontSize: 60),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon,
      // ),

    );
  }
}


