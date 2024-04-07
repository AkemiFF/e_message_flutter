import 'package:e_message/screens/guest/auth.dart';
import 'package:e_message/screens/guest/term.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      // child: AuthScren(),
      child: TermScreen(),
    );
  }
}
