import 'package:flutter/material.dart';
import 'package:tasarim_odev_1/information.dart';
import 'package:tasarim_odev_1/sonucEkrani.dart';

// ignore: must_be_immutable
class OyunEkrani extends StatefulWidget {
  Human human;
  OyunEkrani({required this.human});
  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekrani",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.human.ad} - ${widget.human.soyad} - ${widget.human.yas} - ${widget.human.bekarMi} - ${widget.human.boy} - ${widget.human.kilo}"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SonucEkrani()));
              }, 
              child: Text("Bitti",style: TextStyle(fontSize: 16,color: Colors.white,),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}