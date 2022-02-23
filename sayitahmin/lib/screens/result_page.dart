import 'package:flutter/material.dart';

class Result extends StatefulWidget {
   bool sonuc;  
   Result({required this.sonuc});
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Result Screen"),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
       
        widget.sonuc ? Image.asset("assets/images/mutlu.jpg") : Image.asset("assets/images/mutsuz.jpg"),
        widget.sonuc ? Text("Kazandınız",style: TextStyle(color: Colors.purple,fontSize: 36),) : Text("Kaybettiniz",style: TextStyle(color: Colors.purple,fontSize: 36),),        
           SizedBox(
             width:200,
             height: 50, 
           ),
           
         ],
       ),
     ),
    );
  }
}