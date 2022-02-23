import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayitahmin/screens/result_page.dart';


class ForeCast extends StatefulWidget {
  const ForeCast({ Key? key }) : super(key: key);

  @override
  _ForeCastState createState() => _ForeCastState();
}

class _ForeCastState extends State<ForeCast> {
  
  var foreCast=TextEditingController();
  int randomNumber=0;
  int remainingRight=5;
  String  orientation="";

  @override
  void initState() {
    super.initState();
    randomNumber = Random().nextInt(101);
    print(randomNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forecast Screen"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
          Text("Kalan Hakkınız:$remainingRight",style: const TextStyle(color: Colors.purple,fontSize: 30),),
          Text("İpucu:$orientation",style: const TextStyle(color: Colors.purple,fontSize: 30),),
          Padding(padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller:foreCast,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              labelText: "Tahmin",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
          ),

          SizedBox(
            width: 200,
            height: 50,
            child: RaisedButton(
              color:Colors.purple,
              onPressed:(){
                setState(() {
                  remainingRight= remainingRight -1;
                });
                int forecast= int.parse(foreCast.text);

                if(forecast == randomNumber){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Result(sonuc: true)));
                }
               
               if(forecast >randomNumber){
                 setState(() {
                   orientation="Tahmini azalt";
                 });
               }

               if(forecast <randomNumber){
                 orientation="Tahmini arttır";
               }

               if(remainingRight ==0){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Result(sonuc: false,)));
               }
               foreCast.text="";
            },
            child: Text("Tahmin Et"),       
            textColor: Colors.white,
            ),
          )
          ],
        ),
      ),
    );
  }
}