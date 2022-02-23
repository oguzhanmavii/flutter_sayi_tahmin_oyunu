

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sayitahmin/screens/forecast_page.dart';



void main()=>runApp(const App());

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Tahmin Oyunu",style: TextStyle(fontWeight: FontWeight.bold),),
            Image.asset("assets/images/tahminzar.png"),
            RaisedButton(
              color: Colors.purple,
              onPressed:(){         
                  
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForeCast()));
            },
            child: const Text("Oyuna Başla",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}