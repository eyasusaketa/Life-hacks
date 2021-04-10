import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     _textview(String label)
    {
    return Padding(
        padding: EdgeInsets.fromLTRB(20,20,20,10),
        child:TextField(
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)),),
        ));
    }
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
      ),
      body: ListView(
      children: <Widget>[
        Container(
          child:Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Center(
              child:Padding(
              padding: EdgeInsets.fromLTRB(40,0,30,0),
              child:Text("Please login in to life hacks account  to get pro version",
                style: TextStyle(color: Colors.white,
                fontFamily: 'font2',
                fontSize: 35),
              )),),
            ],
          ) ,
          height:MediaQuery.of(context).size.height*.25 ,

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40),
            )
          ),
        ),
        _textview("User name"),
        _textview("Password"),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*.60, 0, 0, 40),
          child: Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
        ),

        Center(
          child:RaisedButton(
            color: Colors.blue,

            padding: EdgeInsets.fromLTRB(50, 8, 55, 8),
            textColor: Colors.white,
            splashColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            child:Text("Login",style: TextStyle(fontSize: 27,fontFamily: 'font1'),),
            onPressed: (){},
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.35, 30, 0, 0),
            child:Text("Create account",
              style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.grey),))
      ],
      ),
    );
  }
}
