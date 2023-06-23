import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Button/Controller.dart';
import 'package:viseo/presentation/view/common/Button/Custome_ElevatedButton.dart';

class DevisCard extends StatefulWidget {
  const DevisCard({
    Key? key,
    required this.title,
    required this.descri,
    required this.price,
    required this.status,
    required this.date,
  }) : super(key: key);

  final String title;
  final String price;
  final String status;
  final List<String> descri;
  final String date;

  @override
  State<DevisCard> createState() => _DevisCardState();
}

class _DevisCardState extends State<DevisCard> {

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
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Color(0xFF343434),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Row(children: [
              Text(
                widget.title,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Padding(
               padding: EdgeInsets.only(left: 4),
               child: _getStatus(),
              ),
              const Spacer(),
              Text(
                widget.price,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis
              ),
              ],),
              subtitle: Column(
               children: widget.descri.map((strone){
                   return Row(
                      children:[
                        const Text("\u2022", style: TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis), //bullet text
                        const SizedBox(width: 10,), 
                        Expanded( 
                          child:Text(strone, style: const TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis), //text
                        )
                      ]
                   );
                }).toList(),
            )
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 2),
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
                    ],
                  ),
                  const Spacer(),
                  CustomElevatedButton(size: ButtonSize.sm, icon: Icon(Icons.add), buttonTitle: "détails", color: ButtonColor.grey, onPressed: () {})
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
