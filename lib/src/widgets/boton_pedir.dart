import 'package:flutter/material.dart';

class BotonPedir extends StatelessWidget {

  final String text;

  BotonPedir({this.text});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.40,
      height: (screenSize.height * 0.15) * 0.50,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.redAccent,
      ),

      child: Center(child: Text(this.text, style: TextStyle( color: Colors.white70, fontWeight: FontWeight.w700 ),)),
    );
  }
}

