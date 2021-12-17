import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LeavePage extends StatefulWidget {
  const LeavePage({Key? key}) : super(key: key);

  @override
  _LeavePageState createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final items = ["Half Day or Full Day", "Medical or Casual"];
  String? valueChoose;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leave",
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
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  underline: SizedBox(),
                  iconSize: 36,
                  hint: Text("Select Type of Leave"),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue as String?;
                    });
                  },
                  items: items.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                minLines: 2,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Type here your message",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text(
                "SUBMIT",
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
                        child: Text("Leave Submit Successfull"),
                      );
                    });
                FirebaseFirestore.instance.collection("leave1").add({
                  "Leave Type":
                  "${valueChoose.toString()}",



                });

                print("${valueChoose.toString()}",
                    );

              },
            ),
          ],
        ),
      ),
    );
  }
}
