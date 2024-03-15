import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FormFooter extends StatelessWidget {
  const FormFooter({super.key, required this.onPressedSubmit});

  final VoidCallback onPressedSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressedSubmit, 
          child: Text("Submit")
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}