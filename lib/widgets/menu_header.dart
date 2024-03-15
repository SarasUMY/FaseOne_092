import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text("Menu Restaurant", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}