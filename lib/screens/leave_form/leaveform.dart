import 'package:flutter/material.dart';
import 'package:loginpage/screens/profilescreen/profilescreen.dart';

class LeaveForm extends StatefulWidget {
  const LeaveForm({Key? key}) : super(key: key);

  @override
  _LeaveFormState createState() => _LeaveFormState();
}

class _LeaveFormState extends State<LeaveForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
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

                      onPressed: null,
                      child: Text('Days', style: TextStyle(
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
                      child: Text('Reason', style: TextStyle(
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

                      onPressed: null,
                      child: Text('Submit', style: TextStyle(
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
