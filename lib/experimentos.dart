import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperimentosPage extends StatelessWidget {
  const ExperimentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                    """Para utilizar os algoritmos de RL para otimização de funções, adequamos o problema de otimização global como um MDP seguindo o framework proposto por [Li and Malik 2016]. Assim, definimos o MDP: o conjunto de estados S ⊆ Rd como o domínio da função em questão; o conjunto de ações A ⊆ Rd como o conjunto de possíveis passos; a função recompensa R : S ×A×S → R ⊂ R como R(St, At, St+1) = −f (St+1) onde f é a função objetiva em questão; o fator de desconto γ ∈ [0, 1] foi adotado como 0.99 para todos algoritmos; A função que descreve as dinâmicas do MDP não é utilizada pelos agentes, assim não será descrita aqui.

As 8 funções de benchmark consideradas são conhecidas pela literatura e são provenientes da competição Evolutionary Multi-task Optimization IEEE WCCI 20201. A implementação de cada uma das funções está disponível no site da competição. As funções escolhidas são classificadas em: unimodal (F1—F4) e multimodal (F5—F8).
""",
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(columns: const <DataColumn>[
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "Tipo",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "No",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "Função",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "Espaço de Busca",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "F(x*)",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                ], rows: const <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Unimodal")),
                    DataCell(Text("1")),
                    DataCell(Text("Sphere")),
                    DataCell(Text("x ∈ [−5.12, 5.12]d")),
                    DataCell(Text("0.0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Unimodal")),
                    DataCell(Text("2")),
                    DataCell(Text("Rosenbrock")),
                    DataCell(Text("x ∈ [−5, 10]d")),
                    DataCell(Text("0.0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Unimodal")),
                    DataCell(Text("3")),
                    DataCell(Text("Sum Squares")),
                    DataCell(Text("x ∈ [−10, 10]d")),
                    DataCell(Text("0.0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Unimodal")),
                    DataCell(Text("4")),
                    DataCell(Text("Rotated Hyper-Ellipsoid")),
                    DataCell(Text("x ∈ [−10, 10]d")),
                    DataCell(Text("0.0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Multimodal")),
                    DataCell(Text("5")),
                    DataCell(Text("Ackley")),
                    DataCell(Text("x ∈ [−32.768, 32.768]d")),
                    DataCell(Text("0.0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Multimodal")),
                    DataCell(Text("6")),
                    DataCell(Text("Levy")),
                    DataCell(Text("x ∈ [−10, 10]d")),
                    DataCell(Text("0.0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Multimodal")),
                    DataCell(Text("7")),
                    DataCell(Text("Griewank")),
                    DataCell(Text("x ∈ [−10, 10]d")),
                    DataCell(Text("0.0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Multimodal")),
                    DataCell(Text("8")),
                    DataCell(Text("Rastrigin")),
                    DataCell(Text("x ∈ [−5.12, 5.12]d")),
                    DataCell(Text("0.0")),
                  ]),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                      """Para os testes, selecionamos os algoritmos REINFORCE [Sutton and Barto 2018], Proximal Policy Optimization (PPO) [Schulman et al. 2017], Twin Delayed DDPG (TD3) [Fujimoto et al. 2018] e Soft Actor-Critic (SAC) [Haarnoja et al. 2018]. As escolhas se basearam na popularidade, aplicabilidade em problemas de diferentes domínios, e facilidade de implementação desses algoritmos.
            
            As configurações gerais adotadas foram: 2000 episódios de treino; 250 interações por episódio; Batch com 256 amostras (quando aplicável); e redes neurais com duas camadas escondidas (256 unidades em cada). As configurações foram escolhidas com base nas adotadas pelos trabalhos que propuseram esses algoritmos [Sutton and Barto 2018, Schulman et al. 2017, Fujimoto et al. 2018, Haarnoja et al. 2018], não sendo realizados ajustes finos, visando manter as configurações similares para todos eles.
                  """,
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(columns: const <DataColumn>[
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "Hiperparâmetro",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "REINFORCE",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "SAC",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "TD3",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "PPO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                ], rows: const <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(Text("α")),
                    DataCell(Text("3 · 10−4")),
                    DataCell(Text("3 · 10−4")),
                    DataCell(Text("3 · 10−4")),
                    DataCell(Text("3 · 10−4")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("β")),
                    DataCell(Text("3 · 10−4")),
                    DataCell(Text("3 · 10−4")),
                    DataCell(Text("3 · 10−4")),
                    DataCell(Text("3 · 10−4")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("γ")),
                    DataCell(Text("0.99")),
                    DataCell(Text("0.99")),
                    DataCell(Text("0.99")),
                    DataCell(Text("0.99")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("τ")),
                    DataCell(Text("—")),
                    DataCell(Text("5 · 10−3")),
                    DataCell(Text("5 · 10−3")),
                    DataCell(Text("—")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Frequência de Atualização Target Networks")),
                    DataCell(Text("—")),
                    DataCell(Text("2")),
                    DataCell(Text("2")),
                    DataCell(Text("—")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("Capacidade da Memória de Replay")),
                    DataCell(Text("—")),
                    DataCell(Text("10^6")),
                    DataCell(Text("10^6")),
                    DataCell(Text("—")),
                  ]),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text:
                            "O repositório da presente pesquisa encontra-se em ",
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: "https://github.com/rl-opt/rlopt",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.blue)
                            .copyWith(decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            var url =
                                Uri.parse("https://github.com/rl-opt/rlopt");
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            }
                          }),
                    TextSpan(
                        text:
                            ". O código foi feito em Python 3.8, utilizando o TensorFlow 2.5.0 e TF-Agents 0.8. Os agentes foram treinados utilizando o Google Colaboratory seguindo as especificações dessa seção.",
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: """


Detalhes da implementação:

• Todas as ações tomadas pelos agentes resultam em nova posição dentro do espaço de busca da função em questão, impondo que os agentes só explorem o espaço de busca definido. 

• As funções de perda das redes neurais foram minimizadas utilizando o algoritmo ADAM, presente no TF-Agents, com as taxas de aprendizado (α e β) da tabela acima.

• O estado inicial, S0 = (x1, . . . , xd), foi inicializado aleatoriamente, seguindo uma distribuição uniforme, ao início de cada episódio e execução de teste.

• Durante o treino, todos os episódios possuíram 250 interações agente-ambiente sendo esse o único critério de parada adotado. Durante a avaliação, foram consideradas 500 interações agente-ambiente como critério de parada.

• Para os algoritmos que fazem uso de uma memória de replay (Replay Buffer), foram executados 20 episódios iniciais para geração das primeiras amostras.

• Para todos os algoritmos, as ações At = (a1, . . . , ad) ∈ A foram limitadas em At ∈ [−1, 1]d, visando manter um valor comum que não extrapola os espaços de busca considerados.

Como resultado do treinamento dos agentes, foram aprendidos 32 algoritmos de otimização distintos e foram realizados testes comparativos entre eles e os baselines (GD e NAG), no Google Colaboratory, com 100 execuções independentes em cada uma das funções. Dessa forma, os resultados são apresentados em termos da média dessas execuções.
""", style: Theme.of(context).textTheme.bodyLarge),
                  ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
