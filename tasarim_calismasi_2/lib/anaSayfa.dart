import 'package:flutter/material.dart';
import 'package:tasarim_odev_1/information.dart';
import 'package:tasarim_odev_1/oyunEkrani.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç = $sayac",style: TextStyle(fontSize: 34),),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  sayac = sayac + 1;
                });
              }, 
              child: Text("Arttır",style: TextStyle(fontSize: 16,color: Colors.white,),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
            ElevatedButton(
              onPressed: (){
                var human = Human(ad: "İbrahim", soyad: "YİTİZ", yas: 23, bekarMi: true, boy: 1.86, kilo: 80);
               Navigator.push(context, MaterialPageRoute(builder: (context)=>  OyunEkrani(human: human,)));
              }, 
              child: Text("Başla",style: TextStyle(fontSize: 16,color: Colors.white,),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}