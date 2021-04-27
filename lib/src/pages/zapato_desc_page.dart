import 'package:flutter/material.dart';

import 'package:shoesapp/src/widgets/custom_widgets.dart';

class ZapatoDescripcionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                ZapatoSizePreview(
                  fullScreen: true,
                ),
                Positioned(
                  top: screenSize.height * 0.05,
                  left: screenSize.width * 0.05,
                  child: FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    highlightElevation: 0.0,
                    splashColor: Colors.white,                    // Efecto que se ve al tocar el boton
                    child: Icon(Icons.chevron_left, size: 60.0,),
                    onPressed: (){
                      
                    },
                  ),
                )
              ],
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

                    _ColoresYMas(),

                    _BotonesLikeCartSettings(),
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

class _BotonesLikeCartSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric( vertical: 30.0 ),
      padding: EdgeInsets.symmetric( horizontal: screenSize.width * 0.1 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _BotonSombreado(
            icon: Icon(
              Icons.favorite,
              color: Colors.red[700],
              size: ( screenSize.width < screenSize.height ) ? screenSize.width * 0.08 : screenSize.height * 0.08 ),
          ),
          _BotonSombreado(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.grey.withOpacity(0.4),
              size: ( screenSize.width < screenSize.height ) ? screenSize.width * 0.08 : screenSize.height * 0.08 ),
          ),
          _BotonSombreado(
            icon: Icon(
              Icons.settings,
              color: Colors.grey.withOpacity(0.7),
              size: ( screenSize.width < screenSize.height ) ? screenSize.width * 0.08 : screenSize.height * 0.08 ),
          ),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {

  final Icon icon;

  const _BotonSombreado({
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        // color: Colors.blueGrey[100],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0.0, 3.0)
          )
        ]
      ),

      child: this.icon,
    );
  }
}

class _ColoresYMas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric( horizontal: screenSize.width * 0.1, ),
      child: Row(
        children: [
          
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 90.0,
                  child: _CirculoIndicadorColor( color: Color(0xFFC6D642), ),
                ),
                Positioned(
                  left: 60.0,
                  child: _CirculoIndicadorColor( color: Color(0xFFFFAD29), ),
                ),
                Positioned(
                  left: 30.0,
                  child: _CirculoIndicadorColor( color: Color(0xFF2099F1), ),
                ),
                _CirculoIndicadorColor( color: Color(0xFF364D56), ),
              ],
            ),
          ),

          BotonPedir(
            text: 'More related items',
            botonAlto: screenSize.height * 0.040,
            botonAncho: screenSize.width * 0.40,
            color: Colors.redAccent.withOpacity(0.95),
          ),
        ],
      ),
    );
  }
}

class _CirculoIndicadorColor extends StatelessWidget {

  final Color color;

  const _CirculoIndicadorColor({
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: (screenSize.width < screenSize.height) ? screenSize.width * 0.12 : screenSize.height * 0.12,
      height: (screenSize.width < screenSize.height) ? screenSize.width * 0.12 : screenSize.height * 0.12,
      decoration: BoxDecoration(
        color: this.color,
        shape: BoxShape.circle
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
        margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
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