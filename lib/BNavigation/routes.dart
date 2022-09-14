import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:aryy_version3/BNavigation/buscar.dart';
import 'package:aryy_version3/BNavigation/citas.dart';
import 'package:aryy_version3/BNavigation/favoritos.dart';
import 'package:aryy_version3/BNavigation/mensajes.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      BuscarScreen(),
      const Citas(),
      const Favoritos(),
      const Mensajes()
    ];
    return myList[index];
  }
}
