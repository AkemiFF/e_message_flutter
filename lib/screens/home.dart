import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF886C19),
          title: const Text(
            "Messagerie",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          shadowColor: Colors.black,
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: const Center(
            child: Text('Heyyy'),
          ),
        ),
      ),
    );
  }
}
