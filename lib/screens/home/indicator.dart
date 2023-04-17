import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 20.0 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.grey[700] : Colors.grey,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
