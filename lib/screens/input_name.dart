import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'input_Page.dart';

class InputName extends StatefulWidget {
  @override
  _InputNameState createState() => _InputNameState();
}

class _InputNameState extends State<InputName> {
  String uName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Enter Your Name',
            style: kResultTextStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Enter Your Name',
              border: InputBorder.none,
              filled: true,
              fillColor: Color(0xFFDBEDFF),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Color(00000000)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Color(00000000)),
              ),
            ),
            onChanged: (text) {
              uName = text;
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(name: uName,),
                ),
              );
            },
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.blue,
            child: new Text("Enter"),
          ),
        ],
      ),
    );
  }
}
