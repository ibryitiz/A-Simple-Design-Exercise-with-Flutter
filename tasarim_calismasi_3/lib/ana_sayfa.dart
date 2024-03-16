import 'package:flutter/material.dart';
import 'package:odev_flutter_20_subat/sayfa1.dart';
import 'package:odev_flutter_20_subat/sayfa2.dart';
import 'package:odev_flutter_20_subat/sayfa3.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int secilenIndex = 0;
  var sayfalar = [const SayfaBir(),const SayfaIki(), const SayfaUc()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: secilenIndex,
        selectedFontSize: 14,
        selectedItemColor: Colors.amber,
        onTap: (indeks) {
          setState(() {
            secilenIndex = indeks;
          });
        },
      ),
    );
  }
}
