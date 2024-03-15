import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key, required this.formkey, required this.etMakanan, required this.etMinuman, required this.etDessert});

  final GlobalKey<FormState> formkey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
          controller: widget.etMakanan,
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: "Makanan",
            hintText: "Masukkan Makanan",
            ),
          ),
          SizedBox(
          height: 15,
          ),
          TextFormField(
          controller: widget.etMinuman,
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: "Minuman",
            hintText: "Masukkan Minuman",
            ),
          ),
          SizedBox(
          height: 15,
          ),
          TextFormField(
          controller: widget.etDessert,
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: "Dessert",
            hintText: "Masukkan Dessert",
            ),
          ),
          SizedBox(
          height: 15,
          ),
        ],
      )
    );
  }
}