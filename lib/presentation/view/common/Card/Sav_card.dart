import 'package:flutter/material.dart';

class SavCard extends StatefulWidget {
  const SavCard({
    Key? key,
    required this.title,
    required this.type,
    required this.date,
    required this.status,
  }) : super(key: key);

  final String title;
  final String type;
  final String date;
  final String status;

  @override
  State<SavCard> createState() => _SavCardState();
}

class _SavCardState extends State<SavCard> with TickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _rotationController;
  late Animation<double> _rotationAnimation;

  Icon _getStatus() {
    if (widget.status == "Finished") {
      return const Icon(Icons.checklist_rtl_outlined, color: Colors.green);
    } else if (widget.status == "en cour") {
      return const Icon(Icons.check_circle_outline, color: Colors.green);
    }
    return const Icon(Icons.cancel_outlined, color: Colors.red);
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _rotationController.forward();
      } else {
        _rotationController.reverse();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _rotationAnimation = Tween<double>(begin: 0.0, end: 0.5).animate(
      CurvedAnimation(
        parent: _rotationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 370,
      height: _isExpanded ? 200 : 125,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: const Color(0xFF343434),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  RotationTransition(
                    turns: _rotationAnimation,
                    child: IconButton(
                      onPressed: _toggleExpanded,
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                "Type: ${widget.type}",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            if (_isExpanded)
              AnimatedOpacity(
                opacity: _isExpanded ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: const Text("Texte supplémentaire"),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Row(
                    children: [
                      Icon(
                        _getStatus().icon,
                        color: _getStatus().color,
                      ),
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
