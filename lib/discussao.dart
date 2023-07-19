import 'package:flutter/material.dart';

class DiscussaoPage extends StatelessWidget {
  const DiscussaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
                text:
                    "Pelos gráficos de análise de convergência, temos que para a função F1 o SAC, TD3 e PPO se assemelham com o GD e NAG em um problema simples para algoritmos de otimização de primeira ordem. Já para a função F2, o SAC, TD3 e PPO convergiram melhor que o GD e NAG, principalmente por essa função possuir gradientes muito pequenos em posições próximas do mínimo global. Para a F3, o SAC, TD3 e PPO conseguiram encontrar melhores soluções mais rapidamente que o GD e NAG, todavia o NAG alcançou melhores soluções finais. De forma similar, na F4 o SAC, TD3 e PPO alcançaram melhores soluções mais rapidamente, todavia o NAG alcançou melhores soluções finais. Para a F5, o SAC e TD3 apresentaram melhor convergência, enquanto o NAG e GD não conseguiram escapar dos mínimos locais. De forma similar, para a F6 o SAC, TD3 e PPO conseguiram encontrar melhores soluções mais rapidamente, enquanto o GD e NAG não conseguiram escapar dos mínimos locais. Para a F7, apenas o TD3 conseguiu escapar dos mínimos locais. Por último, para a F8 o SAC, TD3, GD e NAG convergiram de forma similar, todavia o SAC e TD3 alcançaram melhores resultados finais.",
                style: Theme.of(context).textTheme.bodyLarge),
            TextSpan(
                text: """


Todavia, é importante compreender as dificuldades dos algoritmos aprendidos para encontrar o mínimo global das funções consideradas. Em particular, conjecturamos que, para os algoritmos de otimização aprendidos pelo método REINFORCE, não houve uma exploração suficiente no espaço de busca da função durante o treinamento. Já para os demais métodos (TD3, SAC e PPO) conjecturamos que a modelagem do MDP pode ter dificultado substancialmente o aprendizado, visto que, para algumas funções, as recompensas adquirem valores muitos grandes (> 10^5). Entretanto, apesar dessas dificuldades, os gráficos de convergência apontam que foram aprendidos algoritmos de otimização competitivos ao GD e NAG, inclusive, obtendo melhores soluções em algumas funções. Portanto, tais métodos conseguiram aprender algoritmos de otimização de ordem zero em grandes dimensões.""",
                style: Theme.of(context).textTheme.bodyLarge),
            TextSpan(
                text: """


Visto que os resultados apresentados apontam que os métodos PS considerados enfrentaram dificuldades para aprender algoritmos de otimização, abordamos sobre as possíveis causas e soluções para essas dificuldades nesta subseção.""",
                style: Theme.of(context).textTheme.bodyLarge),
            TextSpan(
                text: """


Dimensionalidade do espaço de ações: """,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    """Uma das possíveis causas para essa dificuldade é a alta dimensionalidade do espaço de ações, onde cada ação possui 30 dimensões, quando comparado com problemas clássicos de RL. Por exemplo, a dimensionalidade das ações para os ambientes presentes na OpenAI Gym é inferior a 30. A comparação da média das melhores soluções de diferentes algoritmos de otimização aprendidos para a função F5 com diferentes dimensões (d=5, d=10, d=30), corrobora com o argumento que alta dimensionalidade torna o aprendizado mais complicado. Os resultados do comparativo com as demais funções pode ser encontrado no repositório disponibilizado, todavia são similares aos da tabela de resultados.""",
                style: Theme.of(context).textTheme.bodyLarge),
            TextSpan(
                text: """


Ações Limitadas: """,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    """Outra possível causa para a dificuldade dos algoritmos PS é a limitação das ações que podem ser tomadas pelo agente em [-1,1]^d, visto que remove a possibilidade de se aprender algoritmos com maior grau de liberdade. Na realidade, a única limitação das ações do agente deve ser diretamente relacionada com o estado S_t = (x_1, …, x_d) no qual o agente se encontra, já que o agente deveria ser capaz de tomar qualquer ação A_t = (a_1, …, a_d) desde que S_t + A_t ∈ S. Todavia, implementar essa possibilidade requer que os métodos PS sejam modificados de forma a compelir que os agentes só tomem ações que sejam possíveis para o estado atual, logo que os algoritmos escolhidos consideram o conjunto de ações possíveis como sendo o mesmo para todos estados.""",
                style: Theme.of(context).textTheme.bodyLarge),
            TextSpan(
                text: """


Ajuste fino dos hiperparâmetros: """,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    """Uma outra possível causa é a sensibilidade dos algoritmos de RL aos hiperparâmetros escolhidos, posto que diferentes configurações podem afetar drasticamente o desempenho [François-Lavet et al. 2018]. Mesmo que os algoritmos de otimização aprendidos não necessitem de ajustes de parâmetros, os métodos de RL utilizados para aprendê-los precisam. Dessa forma, é crucial considerar outras configurações de hiperparâmetros e aferir a influência dessas configurações nos algoritmos de otimização aprendidos.""",
                style: Theme.of(context).textTheme.bodyLarge),
          ])),
        ),
      ),
    ));
  }
}
