

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottoAppBarState();
}

class _BottoAppBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // Variable pour suivre l'élément actif

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mettre à jour l'élément actif lorsqu'il est tapé
          });
        },
        unselectedItemColor: Color.fromARGB(255, 102, 98, 98),
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color(0xFF555150),
        selectedIconTheme: IconThemeData(
          color: Colors.white, // Couleur de l'icône de l'élément actif
          size: 24, // Taille de l'icône de l'élément actif
        ),
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.signal),
            label: "Panic",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental_outlined),
            label: "Véhicule",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
        ],
      ),
    );
  }
}
