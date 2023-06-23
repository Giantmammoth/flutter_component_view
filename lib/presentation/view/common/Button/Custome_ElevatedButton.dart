import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Button/Controller.dart';



class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({
    Key? key,
    required this.size,
    this.onPressed,
    this.color,
    this.buttonTitle,
    this.icon,

  }) : super(key: key);

  final ButtonSize size;
  final ButtonColor? color;
  final String? buttonTitle;
  final Icon? icon;
  final VoidCallback? onPressed;

@override
State<CustomElevatedButton> createState() => _CustomeElevatedButtonState();
}


class _CustomeElevatedButtonState extends State<CustomElevatedButton> {
ButtonCrtl buttonCrtl = ButtonCrtl();
  @override
  Widget build(BuildContext context) {
      return SizedBox(
        width: buttonCrtl.getWidth(widget.size),
        height: buttonCrtl.getHeight(widget.size),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonCrtl.getColor(widget.color),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (widget.icon != null)
              ...[
                Icon(
                  widget.icon!.icon,
                  size: 15,
                  color: Colors.white,
                ),
                const Spacer(),
              ],
              Text(
                widget.buttonTitle!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: buttonCrtl.getFontSize(widget.size),
                ),
              ),
            ],
          ),
        ),
      );
    }
}
