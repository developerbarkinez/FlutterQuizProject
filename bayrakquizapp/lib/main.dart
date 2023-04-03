import 'package:flutter/material.dart';

import 'QuizEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {






  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Menü"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Quize Hoşgeldiniz",style:TextStyle(fontSize:30)),
            SizedBox(width:250,height:50,
              child: ElevatedButton(
                child:Text("Başla"),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>QuizEkrani()));
                },
              ),
            )
          ],
        ),
      ),

    );
  }
}
