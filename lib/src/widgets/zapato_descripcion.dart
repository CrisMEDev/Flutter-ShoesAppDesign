import 'package:flutter/material.dart';

class ZapatoDescripcion extends StatelessWidget {

  final String titulo, descripcion;

  const ZapatoDescripcion({
    @required this.titulo,
    @required this.descripcion
  });
  
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric( horizontal: screenSize.width * 0.1 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox( height: 15.0, ),
          Text(this.titulo, style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.w700 ),),
          SizedBox( height: 5.0, ),
          Text(this.descripcion, style: TextStyle( fontWeight: FontWeight.w300, color: Colors.grey[700], height: 1.6 )),
        ],
      ),
    );
  }
}

