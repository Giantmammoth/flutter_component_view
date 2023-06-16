


import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton ({
    Key? key,
    required this.type,
    this.buttonTitle,
    this.icon
  }) : super(key: key);

 final String type;
 final String? buttonTitle;
 final Icon? icon;

@override
State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build (BuildContext context) {
    return widget.type == "IconButton" 
          ? IconButton(
            onPressed: () => (), 
            icon: widget.icon!
            )
          : ElevatedButton(
            onPressed: () => (), 
            child: Text(widget.buttonTitle!)
            );
  }
}