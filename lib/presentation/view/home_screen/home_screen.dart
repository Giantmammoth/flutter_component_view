


import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/Button_view/Button_view.dart';
import 'package:viseo/presentation/view/Card_view/CardView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({
    Key? key,
  }) : super(key: key);

@override
State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 172, 172, 172),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Viseo component view",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Buttonview(),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: CardView(),
            ),
          ],
        ),
      ),
    );
  }
}

