import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text("5star Restaurant", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage("https://i.pinimg.com/originals/eb/4f/74/eb4f749fd1c95eefe5cccbcd325d8299.jpg",
          ),
          radius: 70,
        )
      ],
    );
  }
}