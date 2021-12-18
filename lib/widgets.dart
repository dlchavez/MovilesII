import 'package:flutter/material.dart';

class Imagen extends StatefulWidget {
  String ubi;

  Imagen({Key? key, required this.ubi}) : super(key: key);

  @override
  _Imagen createState() => _Imagen();
}

class _Imagen extends State<Imagen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(widget.ubi))),
    );
  }
}
