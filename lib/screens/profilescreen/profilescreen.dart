import 'package:flutter/material.dart';

import 'package:loginpage/screens/leave_form/leaveform.dart';
import 'package:loginpage/screens/punchin/punchin.dart';
import 'package:loginpage/screens/task_page/taskpage.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 0;
  final screens = [
    PunchPage(),
    LeavePage(),
    TaskPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurpleAccent,
      //   actions: <Widget>[
      //     PopupMenuButton(
      //         color: Colors.white70,
      //         elevation: 20,
      //         shape: OutlineInputBorder(
      //           borderSide: BorderSide(
      //             color: Colors.black,
      //             width: 2,
      //           ),
      //         ),
      //         itemBuilder: (context) => [
      //               PopupMenuItem(
      //                 child: Text("Logout"),
      //                 onTap: (){
      //
      //                 },
      //                 value: "logout",
      //               ),
      //             ]),
      //   ],
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        currentIndex: currentIndex,
        iconSize: 30,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user_outlined),
            label: 'Punching',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Leave',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Task',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
