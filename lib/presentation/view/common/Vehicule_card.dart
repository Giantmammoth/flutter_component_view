import 'package:flutter/material.dart';

class VehiculeCard extends StatefulWidget {
  const VehiculeCard({
    Key? key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.descri,
  }) : super(key: key);

  final String img;
  final String title;
  final String subtitle;
  final String descri;

  @override
  State<VehiculeCard> createState() => _VehiculeCardState();
}

class _VehiculeCardState extends State<VehiculeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Modifier la largeur selon vos besoins
      height: 230, // Modifier la hauteur selon vos besoins
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: const Color(0xFF747474),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 14 / 9, // Rapport hauteur / largeur fixe
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  child: Image.asset(
                    widget.img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  widget.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  widget.subtitle,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  widget.descri,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
