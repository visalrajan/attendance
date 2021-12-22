import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Center(
      //         child: Container(
      //           height: 50,
      //           width: 250,
      //           child:  ElevatedButton(
      //             style: ButtonStyle(
      //               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //                 RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(18.0),
      //                   side: BorderSide(
      //                     color: Colors.teal,
      //                     width: 2.0,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             child: Text('EMPLOYEE DETAILS',
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //               ),),
      //             onPressed: () {
      //               Navigator.of(context).pushReplacement(MaterialPageRoute(
      //                   builder: (context) => EmployeeDetails()));
      //             },
      //           ),
      //         ),
      //
      //       ),
      //     ),
      //     SizedBox(
      //       height: 50,
      //     ),
      //
      //
      //   ],
      //
      // ),
    );
  }
}
