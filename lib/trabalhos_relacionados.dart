import 'package:flutter/material.dart';

class TrabalhosRelacionadosPage extends StatelessWidget {
  const TrabalhosRelacionadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
                """Em [Williams and Peng 1991] ocorre uma das primeiras investigações sobre o uso de RL como método de otimização de funções. Nele são consideradas variantes do algoritmo REINFORCE para a otimização de 6 problemas distintos: 4 funções matemáticas, que devem ser maximizadas, e 2 problemas de otimização combinatória. As 4 funções matemáticas consideradas mapeiam um hipercubo n-dimensional em números reais, f : {0, 1} n → R, onde n = 20 foi adotado. Os resultados obtidos indicaram uma boa performance para os problemas considerados. Todavia, diversos problemas de otimização atuais consideram o domínio como um subconjunto do Rd, sendo necessário novas investigações envolvendo o REINFORCE, e suas variantes, nestes cenários.

Em [Li and Malik 2016] os métodos de RL são utilizados para aprender algoritmos de otimização de forma automática, partindo da observação que a execução de um algoritmo de otimização pode ser vista como a execução de um MDP, onde a política representa o algoritmo de otimização. O método utilizado foi o Guided Policy Search (GPS), os experimentos consideraram a minimização do erro de modelos de regressão logística, regressão linear robusta e classificação, considerando o R3 e R4 como espaços de busca. Os resultados apontaram que o algoritmo aprendido performava melhor, em termos de convergência e valor objetivo final, que algoritmos de otimização clássicos, como GD e L-BFGS. Entretanto, não são considerados problemas com maior dimensionalidade e outros algoritmos de RL além do GPS, fazendo-se necessário mais investigações nesse sentido.

Em [Li and Malik 2017] foram feitas mudanças com relação ao framework proposto em [Li and Malik 2016], e novos testes foram realizados considerando a minimização do erro de redes neurais totalmente conectadas para classificação de imagens. As mudanças introduziram o uso de um Processo de Decisão de Markov Parcialmente Observável (POMDP), estratégias para a redução da dimensionalidade do espaço de estados e ações, levando em conta peculiaridades do problema em questão, e uma versão adaptada do GPS, chamada de Convolutional GPS. Os resultados demonstraram que o algoritmo aprendido performou melhor que outros algoritmos populares (Adam, AdaGrad, RMSProp, e outros) e conseguiu generalizar para outros conjuntos de dados. Todavia, visto que o único problema considerado é o da minimização do erro de redes neurais, fazem-se necessárias novas pesquisas considerando estratégias para a redução da dimensionalidade e o uso de POMDPs em outros problemas de otimização.

Mais recentemente, em [Faury and Vasile 2018] é proposto um novo algoritmo, chamado Rover Descent, para se aprender algoritmos de otimização de ordem zero. O Rover Descent aprende um algoritmo de otimização por meio da aprendizagem de 3 sistemas independentes: Um preditor para o ângulo de movimentação, aprendido com o uso de imitation learning; Um preditor para a magnitude (i.e., taxa de aprendizagem), aprendido com o Deterministic Policy Gradient (DPG); e um preditor da superfície da função objetiva, também aprendido com o DPG. Os experimentos são realizados com o algoritmo de otimização aprendido para funções matemáticas de 2 dimensões e redes neurais para classificação binária com 10, 20 e 50 dimensões, obtendo bons resultados quando comparados com outros algoritmos de otimização (GD, NAG, e outros). Apesar de considerar o problema de se aprender um algoritmo de otimização de ordem zero, o Rover Descent não é testado em funções matemáticas com maiores dimensões, necessitando de novos estudos nessas condições.

Em [Zhang et al. 2020] é considerado aprender um algoritmo de otimização, de ordem dois, com duas fases. A primeira fase é de minimização, onde um algoritmo de otimização é utilizado para encontrar um mínimo local. Já a segunda é de escape, onde um algoritmo é utilizado para escolher uma nova posição que permita que a próxima fase de minimização escape do mínimo local. O algoritmo para a fase de escape é aprendido utilizando um método Policy Gradient, enquanto o algoritmo para a fase de minimização é aprendido utilizando um módulo Model-Based. O algoritmo de otimização aprendido, constituído pelos algoritmos das duas fases, é testado para funções com diferentes dimensionalidades entre 2 e 10 e para a otimização de redes neurais, obtendo resultados melhores que outros algoritmos clássicos (GD e BFGS).

Diferentemente dos trabalhos anteriores, o presente trabalho aborda sobre a aprendizagem de algoritmos de otimização de ordem zero, por meio de métodos Policy Search, para a otimização global de funções matemáticas com dimensionalidade superior às consideradas anteriormente.
                """,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
      ),
    );
  }
}
