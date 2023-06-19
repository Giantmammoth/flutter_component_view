import 'package:flutter/material.dart';

enum ButtonType {
  iconButton,
  elevatedButton,
  iconElevatedButton,
  cardButton
}

enum ButtonSize {
  sm,
  lg,
  xl
}

enum ButtonColor {
  grey,
  green,
  red
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.type,
    required this.size,
    this.onPressed,
    this.color,
    this.buttonTitle,
    this.icon,

  }) : super(key: key);

  final ButtonType type;
  final ButtonSize size;
  final ButtonColor? color;
  final String? buttonTitle;
  final Icon? icon;
  final VoidCallback? onPressed;

  // Méthode pour obtenir la couleur du bouton en fonction de la valeur de color
  Color _getColor() {
    if (color == ButtonColor.grey) {
      return const Color(0xFF747474);
    } else if (color == ButtonColor.green) {
      return Colors.green;
    } else if (color == ButtonColor.red) {
      return Colors.red;
    }
    return Colors.grey;
  }

  // Méthode pour obtenir la largeur du bouton en fonction de la valeur de size
  double _getWidth() {
    switch (size) {
      case ButtonSize.sm:
        return 100.0;
      case ButtonSize.lg:
        return 150.0;
      case ButtonSize.xl:
        return 370.0;
      default:
        return 70.0;
    }
  }

  // Méthode pour obtenir la hauteur du bouton en fonction de la valeur de size
  double _getHeight() {
    if (size == ButtonSize.sm) {
      return 30.0;
    }
    return 70.0;
  }

  // Méthode pour obtenir la taille de la police du texte en fonction de la valeur de size
  double _getFontSize() {
    switch (size) {
      case ButtonSize.sm:
        return 10.0;
      case ButtonSize.lg:
        return 20.0;
      case ButtonSize.xl:
        return 25.0;
      default:
        return 70.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (type == ButtonType.iconButton) {
      return Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: const Color(0xFF747474),
          border: Border.all(color: const Color(0xFF747474)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: IconButton(
          onPressed: () {},
          icon: icon!,
          color: Colors.white,
        ),
      );
    } else if (type == ButtonType.elevatedButton) {
      return SizedBox(
        width: _getWidth(),
        height: _getHeight(),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: _getColor(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          child: Text(
            buttonTitle!,
            style: TextStyle(
              color: Colors.white,
              fontSize: _getFontSize(),
            ),
          ),
        ),
      );
    } else if (type == ButtonType.iconElevatedButton) {
      return SizedBox(
        width: _getWidth(),
        height: _getHeight(),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: _getColor(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon!.icon,
                size: 15,
                color: Colors.white,
              ),
              const Spacer(),
              Text(
                buttonTitle!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: _getFontSize(),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return SizedBox(
        width: 170.0,
        height: 160.0,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF747474),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Icon(
                  icon!.icon,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  buttonTitle!,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
