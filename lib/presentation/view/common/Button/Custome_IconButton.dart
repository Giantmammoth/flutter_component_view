import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Button/Controller.dart';


class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
    this.color,
    this.buttonTitle,
    

  }) : super(key: key);

  final ButtonColor? color;
  final String? buttonTitle;
  final Icon icon;
  final VoidCallback? onPressed;
  
  @override
  State<StatefulWidget> createState() => _CustomeIconButton();

  
}

class _CustomeIconButton extends State<CustomIconButton> {

  ButtonCrtl buttonCrtl = ButtonCrtl();
@override
  Widget build(BuildContext context) {
      return Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: buttonCrtl.getColor(widget.color),
          border: Border.all(color: buttonCrtl.getColor(widget.color)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: IconButton(
          onPressed: widget.onPressed,
          icon: widget.icon,
          color: Colors.white,
        ),
      );
    }
}

