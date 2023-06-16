


import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({
    Key? key,
  }) : super(key: key);

@override
State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 172, 172, 172),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Viseo component view", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Button",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 30,
                ),
              ),
            ),
            ),
          CustomButton(type: "IconButton", icon: Icon(Icons.lightbulb_outline_rounded)),
          CustomButton(type: "ElevatedButton", buttonTitle: "Tap on me",)
          
        ],
      ),
    );
  }
}