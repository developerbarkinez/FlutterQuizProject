import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  int dogruSayisi;


  SonucEkrani({required this.dogruSayisi});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuc Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("${widget.dogruSayisi} Doğru ${5-widget.dogruSayisi} Yanlış",style:TextStyle(fontSize:30)),
            Text("% ${(widget.dogruSayisi*100/5).toInt()} Başarı Oranı!",style:TextStyle(fontSize:30,color:Colors.pink)),
            SizedBox(width:250,height:50,
             child:ElevatedButton(
               child:Text("Tekrar Dene"),
               onPressed: (){
                 Navigator.pop(context);
               },
             )


            ),
          ],
        ),
      ),

    );
  }
}
