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

            // Talla del zapato
            _ZapatoTalla()

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
          Positioned(
            bottom: 20.0,
            right: 0.0,
            left: 40.0,
            child: _SombraZapato()
          ),

          Image(image: AssetImage('assets/azul.png')),
        ],
      ),
    );
  }
}

class _SombraZapato extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    
    return Transform.rotate(
      angle: -0.55,
      child: Container(
        width: screenSize.width * 0.55,
        height: screenSize.width * 0.15,
        decoration: BoxDecoration(
          // color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFCC5122),
              blurRadius: 20
            )
          ]

        ),
      ),
    );
  }
}

class _ZapatoTalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.55,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _CuadroTalla( tallaZapato: 23.5, ),
            _CuadroTalla( tallaZapato: 24, ),
            _CuadroTalla( tallaZapato: 25, ),
            _CuadroTalla( tallaZapato: 26, ),
            _CuadroTalla( tallaZapato: 27.5, ),
            _CuadroTalla( tallaZapato: 28, ),
          ],
        ),
      ),

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 15
          )
        ]
      ),
    );
  }
}

class _CuadroTalla extends StatelessWidget {

  final double tallaZapato;

  const _CuadroTalla({
    @required this.tallaZapato
  });

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only( right: 10.0 ),
      width: (screenSize.width * 0.12),
      height: (screenSize.width * 0.12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
        // TODO: BoxShadow par ael seleccionado
      ),

      child: Center(
        child: Text(
          ( tallaZapato * 10 % 10 == 0 ) ? tallaZapato.toInt().toString() : tallaZapato.toString(),
          style: TextStyle(
            color: Color(0xFFEB5352),
            letterSpacing: 2,
            fontWeight: FontWeight.w900,

          ),
        )
      ),
    );
  }
}

