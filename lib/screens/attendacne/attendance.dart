import 'package:flutter/material.dart';
import 'package:loginpage/screens/profilescreen/profilescreen.dart';
import 'package:loginpage/screens/punchin/punchin.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.redAccent,
      child: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 150, bottom: 150),

          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:<Widget>[
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 250.0,
                    height: 50.0,
                    child: FlatButton(

                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => PuchIn()));
                      },
                      child: Text('Punch In', style: TextStyle(
                        color: Colors.redAccent,
                      ),
                      ),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                          color: Colors.redAccent,
                          width: 1,
                          style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    child: FlatButton(

                      onPressed: null,
                      child: Text('Punch Out', style: TextStyle(
                        color: Colors.redAccent,
                      ),
                      ),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(side: BorderSide(
                          color: Colors.redAccent,
                          width: 1,
                          style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    child: FlatButton(

                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => ProfileScreen()));

                      },
                      child: Text('Home', style: TextStyle(
                        color: Colors.redAccent,
                      ),
                      ),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(side: BorderSide(
                          color: Colors.redAccent,
                          width: 1,
                          style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(50)),
                    ),
                  ),

                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
