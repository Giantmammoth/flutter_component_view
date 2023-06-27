import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0; // Variable pour suivre l'élément actif

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            buildBottomNavigationBarItem(Icons.warning, "Panic", 0),
            buildBottomNavigationBarItem(FontAwesomeIcons.car, "Véhicule", 1),
            buildBottomNavigationBarItem(FontAwesomeIcons.user, "Profil", 2),
            buildBottomNavigationBarItem(FontAwesomeIcons.commentDots, "Chat", 3),
          ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 90,
          height: 55,
          decoration: BoxDecoration(
            color: _currentIndex == index ? Colors.red : null, // Couleur du rectangle rouge
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: _currentIndex == index ? Colors.white : Colors.grey, 
                  size: 20,// Couleur de l'icône
                ),
                const SizedBox(height: 5),
                Text(label, style: TextStyle(color: _currentIndex == index ? Colors.white : Colors.grey),)
            ],
            )
        ),
    label: label
    );
  }
}



