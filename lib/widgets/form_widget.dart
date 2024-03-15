import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key, required this.etNama, required this.etNoTelp, required this.etAlamat, required this.formkey});

  final TextEditingController etNama;
  final TextEditingController etNoTelp;
  final TextEditingController etAlamat;
  final GlobalKey<FormState> formkey;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etNama,
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Nama",
              hintText: "Masukkan Nama",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: widget.etNoTelp,
            keyboardType: TextInputType.phone,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "No. Telp",
              hintText: "Masukkan No. Telp",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: widget.etAlamat,
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Alamat",
              hintText: "Masukkan Alamat",
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