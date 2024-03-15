import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuFooter extends StatelessWidget {
  const MenuFooter({super.key, required this.onPressedOrder});

  final VoidCallback onPressedOrder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressedOrder, 
          child: Text("Order")
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}