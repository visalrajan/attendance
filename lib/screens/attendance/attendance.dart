//
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
//
// class Attendance extends StatelessWidget {
//
//   final Stream<QuerySnapshot> users =
//   FirebaseFirestore.instance.collection("leave").snapshots();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Employee Attendance"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 500,
//               padding: EdgeInsets.symmetric(vertical: 20),
//               child: StreamBuilder<QuerySnapshot>(
//                   stream: users,
//                   builder: (
//                       BuildContext context,
//                       AsyncSnapshot<QuerySnapshot> snapshot,
//                       ) {
//                     if(snapshot.hasError){
//                       return Text("Something wrong");
//                     }
//                     if(snapshot.connectionState == ConnectionState.waiting) {
//                       return Text("Loading");
//                     }
//                     final data = snapshot.requireData;
//
//                     return ListView.builder(
//                       itemCount: data.size,
//                       itemBuilder: (context, index){
//                         return Text("Punch IN Date : ${data.docs[index]["Reason"].toString()}");
//                       },
//                     );
//                   }
//               ),
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
//
// }
