import 'package:flutter_web/material.dart';

class Forca extends StatelessWidget {

  final controller = TextEditingController();

  Widget build(BuildContext context) {
    // Material -> home: Scaffold -| 1) appbar 2) body
    return MaterialApp(
      title: 'Jogo da forca',
      home: Scaffold(
        appBar: AppBar(title: Text('Forca')),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Word(word: 'hello', tries: ['h', 'e', 'l']),
              SizedBox(height: 20),
              Container(child: Text('Tentativas')),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[Text('b'), Text('c'), Text('d')]),
              Row(
                children: <Widget>[
                Expanded(child: TextField()),
                RaisedButton(child: Text('Try'), onPressed: () {})
              ],),
            ],
          ),
        ),
      ),
    );
  }
}

class Word extends StatelessWidget {
  Word({String word, List<String> tries}) {
    this.word = word;
    this.tries = tries;
  }

  String word;
  List<String> tries;

  Widget build(BuildContext context) {
    List<Widget> letters = word.split('').map((String letter) {
      return Text(' $letter ',
          style: TextStyle(decoration: TextDecoration.underline, fontSize: 20));
    }).toList();
    return Row(children: letters, mainAxisAlignment: MainAxisAlignment.spaceAround);
  }
}