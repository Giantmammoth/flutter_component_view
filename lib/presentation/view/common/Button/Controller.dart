import 'package:flutter/material.dart';

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

class ButtonCrtl {

  Color getColor(ButtonColor? color) {
    if (color == ButtonColor.grey) {
      return const Color(0xFF555150);
    } else if (color == ButtonColor.green) {
      return Color(0xFF3eab36);
    } else if (color == ButtonColor.red) {
      return Color(0xFFff0000);
    }
    return Color(0xFF555150);
  }

  // Méthode pour obtenir la largeur du bouton en fonction de la valeur de size
  double? getWidth(ButtonSize size) {
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
  double? getHeight(ButtonSize size) {
    if (size == ButtonSize.sm) {
      return 30.0;
    }
    return 70.0;
  }

  double getFontSize(ButtonSize size) {
    switch (size) {
      case ButtonSize.sm:
        return 10.0;
      case ButtonSize.lg:
        return 20.0;
      case ButtonSize.xl:
        return 25.0;
      default:
        return 20.0;
    }
  }
  
}