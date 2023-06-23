import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/Button_view/Button_view.dart';
import 'package:viseo/presentation/view/Card_view/CardView.dart';
import 'package:viseo/presentation/view/Input_view/InputView.dart';
import 'package:viseo/presentation/view/common/BottomBar/BottomAppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Viseo component view",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: ListView(
          padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
          children: const [
            Buttonview(),
            SizedBox(height: 30),
            CardView(),
            SizedBox(height: 30),
            InputView(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
