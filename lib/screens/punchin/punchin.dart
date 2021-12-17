import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class PunchPage extends StatefulWidget {
  const PunchPage({Key? key}) : super(key: key);

  @override
  _PunchPageState createState() => _PunchPageState();
}

class _PunchPageState extends State<PunchPage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  TimeOfDay? time = TimeOfDay.now();
  DateTime? date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Punching",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200.0,
              height: 50.0,
              child: ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                // ),
                child: Text(
                  "Punch In",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Center(
                          child: Text("Puch In Successfull"),
                        );
                      });
                  FirebaseFirestore.instance.collection("data1").add({
                    "Punch In Time":
                        "${time!.hour.toString()}:${time!.minute.toString()}",
                    "Puch In Date":
                        "${date!.day.toString()}:${date!.month.toString()}:${date!.year.toString()}"
                  });

                  print("${time!.hour.toString()}:${time!.minute.toString()} - "
                      "${date!.day.toString()}:${date!.month.toString()}:${date!.year.toString()}");

                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text(
                  "Punch Out",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Center(
                          child: Text("Puch Out Successfull"),
                        );
                      });
                  FirebaseFirestore.instance.collection("data1").add({
                    "Punch Out Time":
                        "${time!.hour.toString()}:${time!.minute.toString()}",
                    "Puch Out Date":
                        "${date!.day.toString()}:${date!.month.toString()}:${date!.year.toString()}"
                  });
                  print("${time!.hour.toString()}:${time!.minute.toString()}"
                      "${date!.day.toString()}:${date!.month.toString()}:${date!.year.toString()}");
                },

                // ) Text(
                //   "${time!.hour.toString()}:${time!.minute.toString()}",
                //   style:  TextStyle(fontSize: 60),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
