

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class txtform extends StatelessWidget {
   txtform({required this.txt,required this.c,required this.controller});
  String txt;
  IconData c;
  TextEditingController controller = new TextEditingController() ;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
      margin: const EdgeInsets.fromLTRB(10, 30, 10, 1),
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.fromLTRB(12, 5, 2, 0),
          hintText: '$txt',
          hintStyle: const TextStyle(fontSize: 20,),
          suffixIcon: Icon(c,color: Colors.blue,size: 35,),
        ),
        style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

        maxLines: 1,
      ),
    );
  }
}
