import 'package:flutter/material.dart';

enum InputType {
  text,
  dropdown
} 

enum InputSize {
  sm,
  xl
}

class CustomInput extends StatefulWidget {
  const CustomInput({
    Key? key,
    required this.type,
    required this.size,
    this.controller,
    this.label,
    this.icon,
    this.suffixIcon
  }) : super(key: key);

  final InputType type;
  final InputSize size;
  final TextEditingController? controller;
  final String? label;
  final Icon? icon;
  final Widget? suffixIcon;

  @override
   State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: widget.size == InputSize.sm ? 30 : 20, vertical: 16),
        child: TextFormField(
          controller: widget.controller,
          maxLines: widget.size == InputSize.xl ? 10 : 1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            labelText: widget.label,
            prefixIcon:  widget.icon != null ? Icon(widget.icon!.icon) : null,
            suffixIcon: widget.suffixIcon,
            filled: true,
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
    );
  }
}
