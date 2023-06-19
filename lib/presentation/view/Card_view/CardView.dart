import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Notif_card.dart';
import 'package:viseo/presentation/view/common/Vehicule_card.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);


  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Card",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 30,
                ),
              ),
            ),
            ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          VehiculeCard(title: '1234 WWT', subtitle: "Volkswagen beetle", descri: "Année 1970, 1,6 Essence", img: 'assets/car.jpg',),
          NotifCard(title: "1234 WWT #565", descri: "Devis XX.YY.#xxxx à valider", date: "19 Juin 2023")
          ],
        )
      ],
    );
  }
}