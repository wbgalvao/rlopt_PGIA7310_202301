import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
                """RL é uma das áreas de Aprendizado de Máquina responsável por lidar com o problema de tomada de decisões sequenciais, onde, normalmente, um agente aprende a se comportar visando melhorar uma recompensa numérica obtida ao interagir com o ambiente [Sutton and Barto 2018, François-Lavet et al. 2018]. Nesse contexto, o problema de RL pode ser formalizado com o uso de uma interface agente-ambiente [Sutton and Barto 2018]. O agente é o aprendiz, sendo responsável pela tomada de ações. O ambiente é o ente com o qual o agente interage. Essa interface pode ser representada matematicamente como um Processo de Decisão de Markov (MDP).

Um MDP é descrito como um processo de controle estocástico em tempo discreto, que pode ser definido pela tupla 〈S, A, R, p, γ〉 onde: S é conjunto de estados; A é o conjunto de ações; R : S × A × S → R ⊂ R é a função recompensa e R é o conjunto de possíveis recompensas; p : S × R × S × A → [0, 1] é a função que descreve a dinâmica do MDP; γ ∈ [0, 1] é um fator de desconto utilizado para o cálculo do retorno esperado.

Existem diversos métodos clássicos para resolver os problemas de RL que podem ser formulados como um MDP finito, como, por exemplo, Programação Dinâmica, Métodos de Monte Carlo e Aprendizagem por Diferença Temporal [Sutton and Barto 2018]. Dessa forma, é importante classificar os diferentes métodos existentes.

De forma resumida, os métodos Model-Based aprendem e/ou fazem uso de alguma função que descreve as dinâmicas do MDP. Diferentemente, os métodos Model-Free não fazem uso e nem aprendem tais funções. Os métodos Model-Free podem, ainda, ser classificados em Value-Based, onde o agente aprende alguma value function que vai ser utilizada para a escolha das ações, e Policy Search, onde o agente aprende diretamente uma política responsável pela escolha das ações nos diferentes estados.

Neste trabalho consideramos os métodos Policy Search, onde uma política parametrizada é aprendida e aprimorada buscando maximizar o retorno esperado [Arulkumaran et al. 2017, Zhang and Yu 2020], para aprender algoritmos de otimização global. Essa família de métodos foi escolhida, principalmente, pela aplicabilidade em diversos problemas, inclusive quando o espaço de ações é contínuo, e pelos bons resultados obtidos nos últimos anos em diferentes domínios, como, por exemplo, na Robótica [Arulkumaran et al. 2017] e para se aprender algoritmos de otimização [Li and Malik 2016, Faury and Vasile 2018, Zhang et al. 2020].
                """,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
      ),
    );
  }
}
