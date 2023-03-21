import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final perguntaSelecionada = 0;

  void responder() {
    // perguntaSelecionada++;
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 01'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 02'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 03'),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}
