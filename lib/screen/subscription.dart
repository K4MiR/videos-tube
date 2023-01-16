import 'package:flutter/material.dart';

class SubScreen extends StatefulWidget {
  const SubScreen({Key? key}) : super(key: key);

  @override
  State<SubScreen> createState() => _SubScreenState();
}

class _SubScreenState extends State<SubScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Inscrições',
          style: TextStyle(
            fontSize: 25,
          ),

        ),
      ),
    );
  }
}
