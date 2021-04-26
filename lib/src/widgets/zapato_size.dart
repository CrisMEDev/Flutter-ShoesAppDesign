import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric( horizontal: screenSize.width * 0.1, vertical: 5.0 ),
      child: Container(
        width: screenSize.width,
        height: screenSize.height * 0.45,

        decoration: BoxDecoration(
          color: Color(0xFFEB5352),
          borderRadius: BorderRadius.circular(50.0),
        ),

        child: Column(
          children: [

            // Zapato con sombra
            _ZapatoSombreado(),

          ],
        ),

      ),
    );
  }
}

class _ZapatoSombreado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all( (screenSize.height * 0.45) * 0.1 ),
      child: Stack(
        children: [
          Image(image: AssetImage('assets/azul.png')),
        ],
      ),
    );
  }
}

