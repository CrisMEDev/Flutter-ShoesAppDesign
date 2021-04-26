import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {

  final String texto;

  CustomAppbar({
    @required this.texto,
  });

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      top: true,
      bottom: false,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
        child: Container(
          margin: EdgeInsets.only( top: 30.0 ),
          width: screenSize.width,

          child: Row(
            children: [
              Text(this.texto, style: TextStyle( fontSize: (screenSize.height * 0.08) * 0.35, fontWeight: FontWeight.w700 ),),
              Spacer(),
              Icon( Icons.search, size: (screenSize.height * 0.08) * 0.55, )
            ],
          ),
        ),
      ),
    );
  }
}

