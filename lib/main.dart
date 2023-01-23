import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Pergunta Respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual e a sua cor favorita?',
      'Qual e o seu animal favorito?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(
            child: Text('Resposta1'),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text('Resposta2'),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text('Resposta3'),
            onPressed: responder,
          ),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
