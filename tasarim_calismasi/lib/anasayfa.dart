import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {

    var d = AppLocalizations.of(context);


    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza",style: TextStyle(color: yaziRenk1,fontFamily: "Pacifico",fontSize: 22),),
        backgroundColor: anaRenk,
        centerTitle: true,
        ),
      body:   Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              d!.pizzaBaslik,
              style: TextStyle(
                fontSize: 36,
                color: anaRenk,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                MyTextButton(icerik: d.peynirYazi),
                MyTextButton(icerik: d.sucukYazi),
                MyTextButton(icerik: d.zeytinYazi),
                MyTextButton(icerik: d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                d.teslimatSure,
                style: TextStyle(
                  fontSize: 22,
                  color: yaziRenk2,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                  d.teslimatBaslik,
                  style: TextStyle(
                    fontSize: 22,
                    color: anaRenk,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                d.pizzaAciklama,
                style: TextStyle(
                  fontSize: 22,
                  color: yaziRenk2,
                  ),
                textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Row(
              children: [
                Text(
                d.fiyat,
                style: TextStyle(
                  fontSize: 44,
                  color: anaRenk,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                    ), 
                  child: Text(d.butonYazi,style: TextStyle(color: yaziRenk1,fontSize: 18),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// ignore: must_be_immutable
class MyTextButton extends StatelessWidget {
  String icerik;
  MyTextButton({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(backgroundColor: anaRenk), 
          child: Text(icerik,style: TextStyle(color: yaziRenk1),),
    );
  }
}