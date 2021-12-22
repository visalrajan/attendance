//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:loginpage/screens/attendance/attendance.dart';
//
// class EmployeeDetails extends StatelessWidget {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Employee Details",
//           style: TextStyle(
//               color: Colors.white,
//               fontSize: 24,
//               fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blueAccent,
//       ),
//
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(
//               child: Container(
//                 height: 50,
//                 width: 250,
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(18.0),
//                         side: BorderSide(
//                           color: Colors.teal,
//                           width: 2.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   child: Text('ATTENDANCE',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),),
//                   onPressed: () {
//                     Navigator.of(context).pushReplacement(MaterialPageRoute(
//                         builder: (context) => Attendance()));
//                   },
//                 ),
//               ),
//
//             ),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(
//               child: Container(
//                 height: 50,
//                 width: 250,
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(18.0),
//                         side: BorderSide(
//                           color: Colors.teal,
//                           width: 2.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   child: Text('LEAVE DETAILS',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),),
//                   onPressed: () {},
//                 ),
//               ),
//
//             ),
//           ),
//
//         ],
//
//       ),
//     );
//   }
// }
//
