import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ucp1_paml_092/screen/menu_screen.dart';
import 'package:ucp1_paml_092/widgets/form_footer.dart';
import 'package:ucp1_paml_092/widgets/form_header.dart';
import 'package:ucp1_paml_092/widgets/form_widget.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var noTelp = TextEditingController();
    var alamat = TextEditingController();
    var formkey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                FormHeader(),
                FormWidget(
                  etNama: nama, 
                  etNoTelp: noTelp, 
                  etAlamat: alamat,
                  formkey: formkey,
                ),
                FormFooter(
                  onPressedSubmit: () {
                    if (formkey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MenuScreen(nama: nama.text, noTelp: noTelp.text)), (route) => false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Customer Data Successfully Added"),
                        ),
                      );
                    }
                  },
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}