import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';

class AgregarCarritoBoton extends StatelessWidget {

  final double monto;

  AgregarCarritoBoton({
    @required this.monto
  });

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: screenSize.width,
        height: screenSize.height * 0.15,

        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.05),
          borderRadius: BorderRadius.circular(100.0)
        ),

        child: Row(
          children: [
            SizedBox( width: 20.0,),
            Text('\$' + monto.toString(), style: TextStyle( fontSize: 28.0, fontWeight: FontWeight.bold ),),
            Spacer(),
            BotonPedir( text: 'Add to cart', botonAlto: (screenSize.height * 0.15) * 0.50, botonAncho: screenSize.width * 0.40, ),
            SizedBox( width: 20.0,),
          ],
        ),
      ),
    );
  }
}

