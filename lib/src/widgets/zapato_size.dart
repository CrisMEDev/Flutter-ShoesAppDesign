import 'package:flutter/material.dart';
import 'package:shoesapp/src/pages/zapato_desc_page.dart';

class ZapatoSizePreview extends StatelessWidget {

  final bool fullScreen;

  ZapatoSizePreview({
    this.fullScreen = false,
  });

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        if (!this.fullScreen){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ZapatoDescripcionPage()));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: this.fullScreen ? 5.0 : screenSize.width * 0.1,
          vertical: this.fullScreen ? 5.0 : 0.0
        ),
        child: Container(
          width: screenSize.width,
          height: screenSize.height * 0.45,

          decoration: BoxDecoration(
            color: Color(0xFFEB5352),
            borderRadius: this.fullScreen 
                          ? BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0)
                          )
                          : BorderRadius.circular(50.0),
          ),

          child: Column(
            children: [

              // Zapato con sombra
              _ZapatoSombreado(),

              // Talla del zapato
              if ( !this.fullScreen ) _ZapatoTalla(),

            ],
          ),

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
      padding: EdgeInsets.all( (screenSize.height * 0.50) * 0.1 ),
      child: Stack(
        children: [
          Positioned(
            bottom: 40.0,
            right: 0.0,
            left: 40.0,
            child: _SombraZapato()
          ),

          Image(image: AssetImage('assets/azul.png'), width: screenSize.width * 0.70,),
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

    return GestureDetector(
      onTap: (){ // Aqui provider actualiza la talla seleccionada

      },
      child: Container(
        margin: EdgeInsets.only( right: 10.0 ),
        width: (screenSize.width * 0.12),
        height: (screenSize.width * 0.12),

        decoration: BoxDecoration(
          color:  tallaZapato == 23.5 ? Color(0xFFF24459) : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: tallaZapato == 23.5 
          ? [
            BoxShadow(
              blurRadius: 20.0,
              color: Color(0xFFF24459),
              offset: Offset(0.0, 10.0)
            )
          ]
          : []
        ),

        child: Center(
          child: Text(
            '$tallaZapato'.replaceAll('.0', ''),
            style: TextStyle(
              color:  tallaZapato == 23.5 ? Colors.white : Color(0xFFEB5352),
              letterSpacing: 2,
              fontWeight: FontWeight.w900,

            ),
          )
        ),
      ),
    );
  }
}

