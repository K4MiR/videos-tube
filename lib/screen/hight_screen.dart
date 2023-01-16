import 'package:flutter/material.dart';

class HightScreen extends StatefulWidget {
  const HightScreen({Key? key}) : super(key: key);

  @override
  State<HightScreen> createState() => _HightScreenState();
}

class _HightScreenState extends State<HightScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Em alta',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
