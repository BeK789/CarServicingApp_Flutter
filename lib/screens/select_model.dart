import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SelectModel extends StatefulWidget {
  const SelectModel({super.key});

  @override
  State<SelectModel> createState() => _SelectModelState();
}

class _SelectModelState extends State<SelectModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Brand'),
          Text('Select Model'),
        ],
      ),
    );
  }
}
