import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;

  int respondidas = 0;
  void responder() {
    setState(() {
      if (perguntaSelecionada < 2) {
        perguntaSelecionada++;
      }
    });
    print('Pergunta Respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual e a sua cor favorita?',
      'Qual e o seu animal favorito?',
      'Qual é o maior planeta do sistema solar?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Perguntas',
          style: TextStyle(fontSize: 22),
        )),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(
            child: Text('Resposta1'),
            onPressed: () => responder,
          ),
          ElevatedButton(
            child: Text('Resposta2'),
            onPressed: () => responder,
          ),
          ElevatedButton(
            child: Text('Resposta3'),
            onPressed: () => responder,
          ),
        ],
      ),
    ));
  }
}

// class PerguntaApp extends StatefulWidget {
//   @override
//   PerguntaApp createState() {
//     return PerguntaAppState();
//   }
// }
