import 'package:flutter/material.dart';

class SayfaBir extends StatefulWidget {
  const SayfaBir({super.key});

  @override
  State<SayfaBir> createState() => _SayfaBirState();
}

class _SayfaBirState extends State<SayfaBir> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hoşgeldiniz"),
      ),
    );
  }
}