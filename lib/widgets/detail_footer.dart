import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({super.key, required this.onPressedSelesai});

  final VoidCallback onPressedSelesai;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(onPressed: onPressedSelesai, child: Text("Selesai")),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
