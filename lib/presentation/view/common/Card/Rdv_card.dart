import 'package:flutter/material.dart';

class RdvCard extends StatefulWidget {
  const RdvCard({
    Key? key,
    required this.title,
    required this.descri,
    required this.date,
    required this.status
  }) : super(key: key);

  final String title;
  final String descri;
  final String date;
  final String status;

  @override
  State<RdvCard> createState() => _RdvCardState();
}

class _RdvCardState extends State<RdvCard> {

  Icon _getStatus() {
    if (widget.status == "validé") {
      return const Icon(Icons.check_circle, color: Colors.green,);
    } else if (widget.status ==  "en cour") {
      return const Icon(Icons.check_circle_outline, color: Colors.green,);
    } 
    return const Icon(Icons.cancel_outlined, color: Colors.red,);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 125,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: const Color(0xFF343434),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                widget.title,
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                widget.descri,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 7),
              child: Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        widget.date,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 30),
                      Icon(_getStatus().icon, color: _getStatus().color,),
                      const SizedBox(width: 10),
                      Text(
                        widget.status,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            const Spacer(), // Ajout du Spacer pour occuper l'espace disponible
          ],
        ),
      ),
    );
  }
}
