import 'package:flutter/material.dart';

import 'package:shoesapp/src/widgets/custom_widgets.dart';

class ZapatoDescripcionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ZapatoSizePreview(
              fullScreen: true,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                      ZapatoDescripcion(
                      titulo: 'Nike Air Max 720',
                      descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),
                    _MontoBuyNow(),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric( horizontal: screenSize.width * 0.1 ),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Text('180.0', style: TextStyle( fontSize: 28.0, fontWeight: FontWeight.bold ),),
            Spacer(),
            BotonPedir( text: 'Buy now', botonAncho: screenSize.width * 0.25, botonAlto: screenSize.height * 0.05, )
          ],
        ),
      ),
    );
  }
}