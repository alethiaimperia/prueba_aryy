import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _BNavigatorState createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int currentTapIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTapIndex = index;
      widget.currentIndex(index);
    });
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentTapIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        iconSize: 25.0,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Citas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.medical_information), label: 'Pastillero'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Compras'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ]);
  }
}
