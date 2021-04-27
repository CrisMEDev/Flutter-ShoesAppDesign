import 'package:flutter/material.dart';

class BotonPedir extends StatelessWidget {

  final String text;
  final double botonAlto, botonAncho;

  BotonPedir({
    this.text,
    this.botonAlto = 40.0,
    this.botonAncho = 80.0
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: this.botonAncho,
      height: this.botonAlto,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.redAccent,
      ),

      child: Center(child: Text(this.text, style: TextStyle( color: Colors.white70, fontWeight: FontWeight.w700 ),)),
    );
  }
}

