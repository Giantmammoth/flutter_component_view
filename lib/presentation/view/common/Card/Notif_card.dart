import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Button/Controller.dart';
import 'package:viseo/presentation/view/common/Button/Custome_ElevatedButton.dart';

class NotifCard extends StatefulWidget {
  const NotifCard({
    Key? key,
    required this.title,
    required this.descri,
    required this.date,
  }) : super(key: key);

  final String title;
  final String descri;
  final String date;

  @override
  State<NotifCard> createState() => _NotifCardState();
}

class _NotifCardState extends State<NotifCard> {
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
                      Text(
                        widget.date,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomElevatedButton(size: ButtonSize.sm, icon: Icon(Icons.add), buttonTitle: "détails", color: ButtonColor.grey,onPressed: () {})
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
