import 'package:flutter/material.dart';
import 'package:viseo/presentation/view/common/Input/Custom_input.dart';


class InputView extends StatefulWidget {
  const InputView({Key? key}) : super(key: key);


  @override
  State<InputView> createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Input",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 30,
                ),
              ),
            ),
            ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomInput(type: InputType.text, size: InputSize.sm, label: 'Pseudo', icon: Icon(Icons.person_outline_outlined)),
            CustomInput(type: InputType.text, size: InputSize.sm, label: 'Votre message', suffixIcon: IconButton( icon: Icon(Icons.send), onPressed: () {},),),
            const CustomInput(type: InputType.text, size: InputSize.xl, label: 'Input text') 
          ],
        )
      ],
    );
  }
}