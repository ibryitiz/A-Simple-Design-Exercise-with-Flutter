import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({super.key});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuç Ekrani",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Geri Dön",style: TextStyle(fontSize: 16,color: Colors.white,),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).popUntil((route) => route.isFirst);
              }, 
              child: Text("Anasayfaya Dön",style: TextStyle(fontSize: 16,color: Colors.white,),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}