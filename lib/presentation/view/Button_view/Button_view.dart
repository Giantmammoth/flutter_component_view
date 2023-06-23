import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Button/Controller.dart';
import 'package:viseo/presentation/view/common/Button/Custome_CardButton.dart';
import 'package:viseo/presentation/view/common/Button/Custome_ElevatedButton.dart';
import 'package:viseo/presentation/view/common/Button/Custome_IconButton.dart';

class Buttonview extends StatefulWidget {
  const Buttonview ({
    Key? key,
  }) : super(key: key);

@override
State<Buttonview> createState() => _ButtonviewState();
}

class _ButtonviewState extends State<Buttonview> {

  @override
  Widget build (BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Button",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 30,
                ),
              ),
            ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: buttonList.map((buttonData) => Padding(
                padding: const EdgeInsets.only(top: 8), // Ajouter le padding top souhaité ici
                child: SizedBox(
                  child: buttonData["type"]
                ),
              )).toList(),
            ),
          )
        ],
    );
  }
}

List<Map> buttonList = [
  {
    "type": CustomIconButton(icon: Icon(Icons.notifications_none_outlined), onPressed: () {})
  },
  { 
    "type": CustomElevatedButton(size: ButtonSize.sm, icon: Icon(Icons.add), buttonTitle: "détails", color: ButtonColor.grey,onPressed: () {},)
  },
  {
    "type": CustomElevatedButton(size: ButtonSize.lg, buttonTitle: "Tap on me", color: ButtonColor.green, onPressed: () {})
  },
  {
    "type": CustomElevatedButton(size: ButtonSize.xl, buttonTitle: "Tap on me", color: ButtonColor.red, onPressed: () {})
  },
  {
    "type": CustomCardButton(buttonTitle: 'Prise de rdv', icon: Icon(Icons.note_add_rounded), onPressed: () {})
  }
];