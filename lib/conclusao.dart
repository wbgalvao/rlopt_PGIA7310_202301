import 'package:flutter/material.dart';

class ConclusaoPage extends StatelessWidget {
  const ConclusaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
                """Nesse trabalho foi realizado um estudo experimental com os métodos Policy Search, uma das famílias de métodos de Aprendizagem por Reforço, para aprender algoritmos de otimização de ordem zero de forma automática. Foram usadas 8 funções de benchmark conhecidas pela literatura e realizadas diferentes avaliações, adotando d=30, com 4 algoritmos dessa família (REINFORCE, SAC, TD3 e PPO). Os resultados mostraram que o TD3, PPO e SAC conseguiram aprender algoritmos de otimização que performaram melhor, em termos da solução final e convergência, que o GD e NAG, enquanto o REINFORCE não conseguiu. Pelas análises realizadas, foram discutidas possíveis causas para essas dificuldades: A alta dimensionalidade das ações quando comparado a outros problemas típicos de RL; a limitação das ações em [-1, 1]^d; e a sensibilidade dos algoritmos de RL com relação aos hiperparâmetros. Portanto, os resultados desse trabalho, somado às outras contribuições, demonstram que os métodos de RL, especialmente métodos da família Policy Search, se põem como alternativas para resolver problemas de otimização global, sendo capazes de aprender algoritmos de otimização global que não dependem das derivadas da função objetiva. Entretanto, adaptações se mostram necessárias para obter melhores resultados. Assim, iremos realizar investigações futuras considerando as mudanças propostas, outras modelagens do problema de otimização, outras funções de benchmark, e métodos PS multi-agente.""",
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
      ),
    );
  }
}
