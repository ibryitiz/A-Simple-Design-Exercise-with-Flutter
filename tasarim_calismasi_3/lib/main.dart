import 'package:flutter/material.dart';
import 'package:odev_flutter_20_subat/giris_yap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
       home: GirisYap(),
      );
  }
}

