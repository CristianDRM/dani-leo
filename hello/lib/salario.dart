import 'package:flutter_web/material.dart';

class Tela extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaState();
  }
}

class TelaState extends State<Tela> {
  double total = 0;
  final descontoController = TextEditingController();
  final salarioBrutoController = TextEditingController();

  Widget build(BuildContext context) { // context?
    return MaterialApp(
      title: 'Primeiro site',
      home: Scaffold(
        appBar: AppBar(title: Text('Salario')),
        body: Column(
          children: <Widget>[
            Text('salario bruto'),
            TextField(controller: salarioBrutoController, decoration: InputDecoration(hintText: 'salário bruto'), ),
            SizedBox(height: 20),
            Text('Desconto'), // entra na mesma sessão
            TextField(controller: descontoController, decoration: InputDecoration(hintText: 'Desconto' )),
            SizedBox(height: 20), 
            Text('Total: $total'),
            RaisedButton(child: Text('Calcular'), onPressed: (){
              setState(() {
                var salarioBruto = double.tryParse(salarioBrutoController.text);
                var desconto = double.tryParse(descontoController.text);
                total = salarioBruto * (1 - (desconto / 100));
              });
            }),
            ]
          )
        )
      );
  }
}