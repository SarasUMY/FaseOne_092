import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ucp1_paml_092/widgets/menu_footer.dart';
import 'package:ucp1_paml_092/widgets/menu_header.dart';
import 'package:ucp1_paml_092/widgets/menu_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key, required this.nama, required this.noTelp});

  final String nama;
  final String noTelp;

  @override
  Widget build(BuildContext context) {
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var dessert = TextEditingController();
    var formkey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                MenuHeader(),
                MenuWidget(
                  formkey: formkey, 
                  etMakanan: makanan, 
                  etMinuman: minuman, 
                  etDessert: dessert
                ),
                
              ],
            ),
          ),
        )
      ),
    );
  }
}