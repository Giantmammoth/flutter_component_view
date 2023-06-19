




import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Custom_button.dart';

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
                  child: CustomButton(
                    type: buttonData['type'],
                    size: buttonData['size'],
                    icon: buttonData['icon'],
                    buttonTitle: buttonData['buttonTitle'],
                    color: buttonData['color'],
                  ),
                ),
              )).toList(),
            ),
          )
        ],
    );
  }
}

const List<Map> buttonList = [
  {
    "type": ButtonType.iconButton,
    "icon": Icon(Icons.notifications_none),
    "size": ButtonSize.sm,
  },
  {
    "type": ButtonType.elevatedButton, 
    "buttonTitle": "Tap on me",
    "size": ButtonSize.sm,
    "color": ButtonColor.grey
  },
  {
    "type": ButtonType.iconElevatedButton, 
    "icon": Icon(Icons.add),
    "buttonTitle": "Details",
    "size": ButtonSize.sm,
    "color": ButtonColor.grey
  },
  {
    "type": ButtonType.elevatedButton, 
    "buttonTitle": "Tap on me",
    "size": ButtonSize.lg,
    "color": ButtonColor.green
  },
  {
    "type": ButtonType.elevatedButton, 
    "buttonTitle": "Tap on me",
    "size": ButtonSize.xl,
    "color": ButtonColor.red
  },
  {
    "type": ButtonType.cardButton,
    "icon": Icon(Icons.note_add_rounded),
    "buttonTitle": "Prise de rdv",
    "size": ButtonSize.sm
  },
  
];