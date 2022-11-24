

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  btn({required this.courseName,this.col=Colors.black,required this.click});
  String courseName;
  Color col;
  Function click;
  //Color(0xFF104AD1)
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 2, 8, 12),
      padding: EdgeInsets.fromLTRB(30, 6, 30, 6),
      decoration: BoxDecoration(
        color:col,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        onPressed: (){
          click();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(col),
          elevation: MaterialStatePropertyAll(0),
        ),
        child: Text('$courseName',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
