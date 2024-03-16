import 'package:flutter/material.dart';
import 'package:odev_flutter_20_subat/ana_sayfa.dart';

class GirisYap extends StatefulWidget {
  const GirisYap({super.key});

  @override
  State<GirisYap> createState() => _GirisYapState();
}

class _GirisYapState extends State<GirisYap> {
  var kController = TextEditingController();
  var pController = TextEditingController();
  bool kontrol = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Giriş Yap",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: kController,
              decoration: const InputDecoration(
                hintText: "Kullanıcı Adı",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
             obscureText: kontrol,
              keyboardType: TextInputType.visiblePassword,
              controller: pController,
              decoration:  InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    kontrol = !kontrol;
                  });
                }, icon: Icon(kontrol ? Icons.visibility_off : Icons.visibility,)),
                hintText: "Parola",
                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              if (kController.text == "a" && pController.text == "1") {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa()));
                kController.text = "";
                pController.text = "";
              }else{
                showDialog(context: context, builder: (BuildContext context){
                  return const AlertDialog(
                    content: Text("Kullanıcı Adı veya Parola yanlış."),
                  );
                });
              }
            }, 
            child: Text("Giriş Yap", style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[100]),
          )
        ],
      ),
    );
  }
}