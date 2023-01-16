import 'package:flutter/material.dart';
import 'package:videos_tube/Api.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {

    Api api = Api();
    api.pesquisar("");

    return Container(
      child: Center(
        child: Text(
          'Início',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
