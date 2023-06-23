import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({
    Key? key,
    required this.title,
    required this.descri,
    this.items,
  }) : super(key: key);

  final String title;
  final String descri;
  final List<ContactItem>? items;

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 215,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Color(0xFF343434),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 370,
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: Colors.blue, // Couleur de l'en-tête
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
              child: Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 8.0), 
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.descri , style: TextStyle(color: Colors.white),),
                  const SizedBox(height: 10),
                  if (widget.items != null)
                    Column(
                      children: widget.items!.map((item) {
                        return itemWidget(item.icon, item.text);
                        }).toList(),
                    ),
                ]),  
            )
          ],
        ),
      ),
    );
  }
}

Widget itemWidget(IconData icon, String text) {
    return Column(
      children:[ 
        Row(
        children: [
          Icon(icon, color: Colors.white,),
          const SizedBox(width: 10),
          Text(text, style: TextStyle(color: Colors.white))
        ],
      ),
      const SizedBox(height: 4.0), 
      ]
    ); 
}

class ContactItem {
  final IconData icon;
  final String text;

  ContactItem({required this.icon, required this.text});
}