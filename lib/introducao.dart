import 'package:flutter/material.dart';

class IntroducaoPage extends StatelessWidget {
  const IntroducaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
                """Os métodos Policy Search (PS) vem sendo utilizados nos  últimos anos para se aprender, automaticamente, algoritmos de otimização, obtendo resultados animadores. Neste trabalho, consideramos métodos PS para aprender algoritmos de otimização para problemas de otimização global, considerando um cenário pouco estudado: funções de alta dimensionalidade e os algoritmos de otimização não possuem acesso às derivadas da função a ser otimizada. Os resultados apontam, que apesar das dificuldades, os algoritmos de otimização aprendidos têm um desempenho promissor no cenário estudado.

A tarefa de encontrar o  ótimo x* de uma função A tarefa de encontrar o  ótimo x* de uma função f com relação a algum domínio X é um problema recorrente, conhecido como otimização global (quando x* tem que ser um ótimo global) [Snyman and Wilke 2018]. Dessa forma, diferentes algoritmos de otimização foram desenvolvidos ao longo dos anos, considerando as peculiaridades dos problemas e/ou classe de problemas que visam resolver [Andrychowicz et al. 2016, Faury and Vasile 2018]. Entretanto, o processo de desenvolvimento é árduo e, por vezes, repetitivo, necessitando da participação de especialistas humanos [Li and Malik 2016] e grande cautela na escolha dos seus parâmetros [Faury and Vasile 2018]. Assim, a automatização do design de algoritmos de otimização é atrativa, sendo um tópico popular e recorrente [Faury and Vasile 2018, Zhang et al. 2020], onde diferentes métodos são utilizados, incluindo, os métodos de Aprendizagem por Reforço (do inglês, Reinforcement Learning - RL) [Andrychowicz et al. 2016]. Nesse contexto, os métodos de RL são utilizados para se aprender os algoritmos de otimização [Chen et al. 2017], representados pela política aprendida. Em específico, os métodos Policy Search (PS) vêm sendo amplamente utilizados para esse problema e obtendo resultados positivos [Li and Malik 2016, Li and Malik 2017, Faury and Vasile 2018, Zhang et al. 2020]. Todavia, existem alguns pontos que precisam ser investigados quanto ao uso desses métodos. Um deles é a capacidade de se aprender algoritmos de otimização que não dependem das derivadas da função a ser otimizada [Golovin et al. 2019], visto que a maioria dos trabalhos realizados com tais métodos aprendem algoritmos de otimização que necessitam da primeira e/ou segunda derivada (i.e., algoritmos de otimização de primeira e segunda ordem, respectivamente), como, por exemplo, em [Li and Malik 2016], [Li and Malik 2017] e [Zhang et al. 2020]. Outro aspecto que precisa ser melhor investigado é a dimensionalidade dos problemas de otimização testados, uma vez que, quando considerados problemas de otimização global, a dimensionalidade não é superior a 10 em muitos trabalhos, como, por exemplo, em [Li and Malik 2016], [Li and Malik 2017], [Faury and Vasile 2018] e [Zhang et al. 2020].

Dessa forma, neste trabalho, o objetivo é aprender algoritmos de otimização global que não necessitem das derivadas da função a ser otimizada (i. e., de ordem zero), e que possam ser aplicados para problemas com dimensionalidade superior a 10. Para isso, o problema de otimização global foi modelado matematicamente como um Processo de Decisão de Markov (MDP) e utilizamos 4 métodos PS populares (REINFORCE, TD3, SAC e PPO) para aprender algoritmos de otimização para 8 funções de otimização global distintas com alta dimensionalidade (d = 30) (provenientes da competição Evolutionary Multi-task Optimization do IEEE WCCI 2020), totalizando 32 algoritmos aprendidos. O desempenho dos algoritmos aprendidos foram comparados entre si, e também com 2 algoritmos clássicos de otimização de primeira ordem: Gradient Descent (GD) e Nesterov’s Accelerated Gradient (NAG). Os resultados apontam que, apesar das dificuldades, a maioria dos métodos PS considerados foram capazes de aprender algoritmos de otimização com performance similar, ou melhor, que os algoritmos clássicos nos problemas considerados.
                """,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
      ),
    );
  }
}
