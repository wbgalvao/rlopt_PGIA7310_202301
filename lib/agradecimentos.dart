import 'package:flutter/material.dart';

class AgradecimentosPage extends StatelessWidget {
  const AgradecimentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
                """Os autores agradecem à FACEPE pelo apoio financeiro para a realização desse trabalho.""",
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
      ),
    );
  }
}
