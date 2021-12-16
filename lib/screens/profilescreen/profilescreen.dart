import 'package:flutter/material.dart';
import 'package:loginpage/screens/attendacne/attendance.dart';
import 'package:loginpage/screens/leave_form/leaveform.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          PopupMenuButton(
              color: Colors.white70,
              elevation: 20,
              shape: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Logout"),
                      onTap: (){

                        // Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      value: "logout",
                    ),
                  ]),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 250.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              child: RawMaterialButton(

                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "ATTENDANCE",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Attendance()));
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: RawMaterialButton(
                padding:
                EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),

                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "LEAVE FORM",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LeaveForm()));
                },
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
          size: 29,
        ),
        backgroundColor: Colors.deepPurple,
        tooltip: "Capture Picture",
        elevation: 5,
        splashColor: Colors.grey,
      ),
    );
  }
}
