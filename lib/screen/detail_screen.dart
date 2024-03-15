import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ucp1_paml_092/screen/form_screen.dart';
import 'package:ucp1_paml_092/widgets/detail_footer.dart';
import 'package:ucp1_paml_092/widgets/detail_header.dart';
import 'package:ucp1_paml_092/widgets/menu_header.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.nama,
      required this.noTelp,
      required this.makanan,
      required this.minuman,
      required this.dessert,
      });

  final String nama;
  final String noTelp;
  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              DetailHeader(),
              Text("Nama $nama"),
              Text("No.Telp $noTelp"),
              Text("Makanan $makanan"),
              Text("Minuman $minuman"),
              Text("Dessert $dessert"),
              DetailFooter(onPressedSelesai: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen(),
                    ),
                    (route) => false);
              })
            ],
          ),
        ),
      )),
    );
  }
}
