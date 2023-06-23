import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Card/Contact_card.dart';
import 'package:viseo/presentation/view/common/Card/Devis_card.dart';
import 'package:viseo/presentation/view/common/Card/Notif_card.dart';
import 'package:viseo/presentation/view/common/Card/Rdv_card.dart';
import 'package:viseo/presentation/view/common/Card/Vehicule_card.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);


  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Card",
                style: TextStyle(
                  color: Colors.white,
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
          NotifCard(title: "1234 WWT #565", descri: "Devis XX.YY.#xxxx à valider", date: "19 Juin 2023"),
          DevisCard(title: "AA.YY#25658", descri: ["Point 1", "Point 2", "Point 3"], date: "19 Juin 2023", price: "152 256.0", status: 'validé',),
          RdvCard(title: "1234 WWT #565", descri: "Devis XX.YY.#xxxx à valider", date: "19 Juin 2023", status: 'validé',),
          ContactCard(
            title: "Adresse concerné", descri: "Service après vente/Pièce,...", 
            items: [
              ContactItem(icon: Icons.phone, text: "0321234567"),
              ContactItem(icon: Icons.mail, text: "contact@contact.com"),
              ContactItem(icon: Icons.blur_circular_rounded, text: "https://www.siteweb.com"),
              ContactItem(icon: Icons.location_on_sharp, text: "Antananarivo"),
            ],
          )
          ],
        )
      ],
    );
  }
}