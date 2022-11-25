import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stateful_widget_ractice_additems/txtformfield.dart';
import 'elv_btn.dart';

class HomeWidget extends StatefulWidget {
   HomeWidget();
  static String routName = "HomeWidget";

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool vis1 = false;

  bool vis2 = false;

  bool vis3 = false;
  TextEditingController name = new TextEditingController() ;
  TextEditingController phone = new TextEditingController() ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor:const Color(0xFF104AD1) ,
        title: const Text('Contact Screen',style: TextStyle(fontSize: 23),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            txtform(txt: 'Enter Your Name Here ',c: Icons.person,controller:  name,),
            txtform(txt: 'Enter Your Phone Number ',c: Icons.phone,controller: phone,),

            const SizedBox(height: 20,),

            Row(
              children: [
                Expanded(child: btn(courseName: 'ADD',col: const Color(0xFF104AD1),click: AddClicked,)),
                Expanded(child: btn(courseName: 'Delete',col: Colors.red,click: DeletrClicked,)
                ),
              ],
            ),

            Visibility(
              visible: vis1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: Text('Name : ${name.text} \n Phone: ${phone.text} ',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            ),
            Visibility(
                visible: vis2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: Text('Name : ${name.text} \n Phone: ${phone.text} ',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            ),
            Visibility(
                visible: vis3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: Text('Name : ${name.text} \n Phone: ${phone.text} ',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            ),

          ],
        ),
      ),

    );
  }

  bool? AddClicked(){

    if(vis1 == false && vis2 == false && vis3 == false){
      setState(() {

      });
      return vis1 = true;
    }
    else if(vis1 == true && vis2 == false && vis3 == false){
      setState(() {

      });
      return vis2 = true;
    }
    else if(vis1 == true && vis2 == true && vis3 == false){
      setState(() {

      });
      return vis3 = true;
    }
    else if(vis1 == true && vis2 == true && vis3 == false){
      setState(() {

      });
      return vis3 = true;
    }
    else if(vis1 == false && vis2 == false && vis3 == true){
      setState(() {

      });
      return vis2 = true;
    }
    else if(vis1 == false && vis2 == false && vis3 == true){
      setState(() {

      });
      return vis1 = true;
    }

    setState(() {

    });

  }

   bool? DeletrClicked(){

     if(vis1 == true && vis2 == true && vis3 == true ){
       setState(() {

       });
       return  vis3 = false;
     }
     else if(vis1 == true && vis2 == true && vis3 == false){

       setState(() {

       });
       return  vis2 = false ;
     }
     else if(vis1 == false && vis2 == false && vis3 == true){
       setState(() {

       });
       return  vis3 = false;
     }
     else if(vis1 == true && vis2 == false && vis3 == false){
       setState(() {

       });
       return  vis1 = false;
     }
     else if(vis1 == true && vis2 == true && vis3 == false){
       setState(() {

       });
       return  vis2 = false;
     }
     setState(() {

     });
   }
}
