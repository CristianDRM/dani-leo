import 'package:flutter_web/material.dart';

class Exercises extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('exercises')),
      body: ListView(children: <Widget>[
      ListTile(title: Text('Jogo da Forca'), onTap: () => Navigator.of(context).pushNamed('forca'))
      ],)
    );
  }
}