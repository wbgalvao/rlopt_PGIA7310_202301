import 'package:flutter/material.dart';

class ResultadosPage extends StatelessWidget {
  const ResultadosPage({super.key});

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
                    "A tabela abaixo contém a média das soluções finais, o desvio padrão dessas soluções e a quantidade média de iterações necessárias para alcançá-las. Os resultados são apresentados com precisão de 3 casas decimais, o algoritmo que obteve a melhor solução final média após as 100 execuções distintas é destacado em negrito.",
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
                      "Função",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Text(
                      "Algoritmo",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  DataColumn(
                      numeric: true,
                      label: Expanded(
                        child: Text(
                          "Solução Final",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                  DataColumn(
                      numeric: true,
                      label: Expanded(
                        child: Text(
                          "Desvio Padrão",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                  DataColumn(
                      numeric: true,
                      label: Expanded(
                        child: Text(
                          "Iterações",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                ], rows: const <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F1")),
                    DataCell(Text("GD")),
                    DataCell(Text("0.000")),
                    DataCell(Text("0.000")),
                    DataCell(Text("202")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F1")),
                    DataCell(Text(
                      "NAG",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataCell(Text("0.000")),
                    DataCell(Text("0.000")),
                    DataCell(Text("94")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F1")),
                    DataCell(Text("REINFORCE")),
                    DataCell(Text("253.588")),
                    DataCell(Text("40.538")),
                    DataCell(Text("0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F1")),
                    DataCell(Text("SAC")),
                    DataCell(Text("1.218")),
                    DataCell(Text("0.140")),
                    DataCell(Text("247")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F1")),
                    DataCell(Text("TD3")),
                    DataCell(Text("1.218")),
                    DataCell(Text("0.140")),
                    DataCell(Text("247")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F1")),
                    DataCell(Text("PPO")),
                    DataCell(Text("0.078")),
                    DataCell(Text("0.007")),
                    DataCell(Text("23")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F2")),
                    DataCell(Text("GD")),
                    DataCell(Text("3 598 321.500")),
                    DataCell(Text("1 043 694.500")),
                    DataCell(Text("0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F2")),
                    DataCell(Text("NAG")),
                    DataCell(Text("3 731 307.500")),
                    DataCell(Text("1 048 323.813")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F2")),
                    DataCell(Text("REINFORCE")),
                    DataCell(Text("3 351 963.500")),
                    DataCell(Text("929 725.560")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F2")),
                    DataCell(Text("SAC")),
                    DataCell(Text("5786.663")),
                    DataCell(Text("1773.539")),
                    DataCell(Text("239")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F2")),
                    DataCell(Text("TD3")),
                    DataCell(Text("1560.544")),
                    DataCell(Text("31.156")),
                    DataCell(Text("223")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F2")),
                    DataCell(Text("PPO",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text("119.182")),
                    DataCell(Text("0.000")),
                    DataCell(Text("249")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F3")),
                    DataCell(Text("GD")),
                    DataCell(Text("805.385")),
                    DataCell(Text("161.740")),
                    DataCell(Text("499")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F3")),
                    DataCell(Text("NAG",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text("5.501")),
                    DataCell(Text("4.563")),
                    DataCell(Text("499")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F3")),
                    DataCell(Text("REINFORCE")),
                    DataCell(Text("14 483.139")),
                    DataCell(Text("3084.537")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F3")),
                    DataCell(Text("SAC")),
                    DataCell(Text("99.671")),
                    DataCell(Text("10.209")),
                    DataCell(Text("262")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F3")),
                    DataCell(Text("TD3")),
                    DataCell(Text("17.912")),
                    DataCell(Text("2.199")),
                    DataCell(Text("44")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F3")),
                    DataCell(Text("PPO")),
                    DataCell(Text("227.700")),
                    DataCell(Text("11.217")),
                    DataCell(Text("345")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F4")),
                    DataCell(Text("GD")),
                    DataCell(Text("802.411")),
                    DataCell(Text("165.477")),
                    DataCell(Text("499")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F4")),
                    DataCell(Text(
                      "NAG",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataCell(Text("5.899")),
                    DataCell(Text("4.266")),
                    DataCell(Text("499")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F4")),
                    DataCell(Text("REINFORCE")),
                    DataCell(Text("14 777.384")),
                    DataCell(Text("2624.734")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F4")),
                    DataCell(Text("SAC")),
                    DataCell(Text("174.400")),
                    DataCell(Text("26.272")),
                    DataCell(Text("165")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F4")),
                    DataCell(Text("TD3")),
                    DataCell(Text("20.268")),
                    DataCell(Text("3.130")),
                    DataCell(Text("58")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F4")),
                    DataCell(Text("PPO")),
                    DataCell(Text("18.590")),
                    DataCell(Text("1.211")),
                    DataCell(Text("26")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F5")),
                    DataCell(Text("GD")),
                    DataCell(Text("19.500")),
                    DataCell(Text("0.193")),
                    DataCell(Text("332")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F5")),
                    DataCell(Text("NAG")),
                    DataCell(Text("19.542")),
                    DataCell(Text("0.158")),
                    DataCell(Text("25")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F5")),
                    DataCell(Text("REINFORCE")),
                    DataCell(Text("21.188")),
                    DataCell(Text("0.203")),
                    DataCell(Text("4")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F5")),
                    DataCell(Text("SAC")),
                    DataCell(Text("8.550")),
                    DataCell(Text("5.090")),
                    DataCell(Text("262")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F5")),
                    DataCell(Text("TD3",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text("3.847")),
                    DataCell(Text("0.066")),
                    DataCell(Text("60")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F5")),
                    DataCell(Text("PPO")),
                    DataCell(Text("20.929")),
                    DataCell(Text("0.190")),
                    DataCell(Text("17")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F6")),
                    DataCell(Text("GD")),
                    DataCell(Text("35.752")),
                    DataCell(Text("19.414")),
                    DataCell(Text("60")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F6")),
                    DataCell(Text("NAG")),
                    DataCell(Text("63.676")),
                    DataCell(Text("18.743")),
                    DataCell(Text("495")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F6")),
                    DataCell(Text("REINFORCE")),
                    DataCell(Text("361.244")),
                    DataCell(Text("83.365")),
                    DataCell(Text("0")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F6")),
                    DataCell(Text("SAC",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text("2.499")),
                    DataCell(Text("0.245")),
                    DataCell(Text("250")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F6")),
                    DataCell(Text("TD3")),
                    DataCell(Text("3.393")),
                    DataCell(Text("0.785")),
                    DataCell(Text("11")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F6")),
                    DataCell(Text("PPO")),
                    DataCell(Text("6.515")),
                    DataCell(Text("0.549")),
                    DataCell(Text("25")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F7")),
                    DataCell(Text("GD")),
                    DataCell(Text("1.235")),
                    DataCell(Text("0.034")),
                    DataCell(Text("499")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F7")),
                    DataCell(Text("NAG")),
                    DataCell(Text("1.156")),
                    DataCell(Text("0.025")),
                    DataCell(Text("495")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F7")),
                    DataCell(Text("REINFORCE")),
                    DataCell(Text("1.243")),
                    DataCell(Text("0.040")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F7")),
                    DataCell(Text("SAC")),
                    DataCell(Text("1.023")),
                    DataCell(Text("0.005")),
                    DataCell(Text("266")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F7")),
                    DataCell(Text("TD3",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text("0.026")),
                    DataCell(Text("0.001")),
                    DataCell(Text("15")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F7")),
                    DataCell(Text("PPO")),
                    DataCell(Text("1.223")),
                    DataCell(Text("0.045")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F8")),
                    DataCell(Text("GD")),
                    DataCell(Text("269.493")),
                    DataCell(Text("43.991")),
                    DataCell(Text("277")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F8")),
                    DataCell(Text("NAG")),
                    DataCell(Text("259.683")),
                    DataCell(Text("40.345")),
                    DataCell(Text("134")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F8")),
                    DataCell(Text("REINFORCE")),
                    DataCell(Text("531.943")),
                    DataCell(Text("59.066")),
                    DataCell(Text("1")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F8")),
                    DataCell(Text("SAC",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text("220.637")),
                    DataCell(Text("12.698")),
                    DataCell(Text("209")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F8")),
                    DataCell(Text("TD3")),
                    DataCell(Text("236.925")),
                    DataCell(Text("7.749")),
                    DataCell(Text("247")),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text("F8")),
                    DataCell(Text("PPO")),
                    DataCell(Text("499.854")),
                    DataCell(Text("0.04550.890")),
                    DataCell(Text("2")),
                  ]),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                      """Pela tabela pode-se perceber que ao menos um dos algoritmos de otimização aprendidos alcançou melhores soluções finais que os baselines em 5 das 8 funções consideradas, sendo 1 unimodal (F2) e todas multimodais (F5-F8). Isso se deve ao fato do GD e NAG serem algoritmos de otimização de primeira ordem, dessa forma, podem ficar presos em mínimos locais ou não conseguir alcançar os mínimos globais quando os gradientes da função não são suficientes para encontrá-lo (e. g., quando os gradientes são muito próximos de 0). Entretanto, visto que os algoritmos de otimização aprendidos não se restringem a seguir uma direção dada pelos gradientes da função, é possível superar esses problemas. Uma outra vantagem dos algoritmos de otimização aprendidos, com relação aos baselines, é que eles não necessitam de otimização nos parâmetros para serem utilizados. Entretanto, é perceptível que os métodos PS considerados tiveram dificuldades para aprender algoritmos de otimização global capazes de alcançar o mínimo global com precisão, visto que o menor erro observado (TD3 na F7) foi 0.026. De qualquer forma, os resultados são animadores e apontam que os algoritmos aprendidos são robustos à posição inicial e conseguem escapar dos mínimos locais, diferentemente do NAG e GD.

As figuras abaixo apresentam os gráficos de convergência média de todos os algoritmos nas funções F1-F8 após 100 execuções independentes com d = 30 e o estado inicial S0, inicializado de forma aleatória, sendo compartilhado entre todos os algoritmos.
""",
                      style: Theme.of(context).textTheme.bodyLarge),
                  Image.asset("assets/plots/F1_30D_plot.png"),
                  Image.asset("assets/plots/F2_30D_plot.png"),
                  Image.asset("assets/plots/F3_30D_plot.png"),
                  Image.asset("assets/plots/F4_30D_plot.png"),
                  Image.asset("assets/plots/F5_30D_plot.png"),
                  Image.asset("assets/plots/F6_30D_plot.png"),
                  Image.asset("assets/plots/F7_30D_plot.png"),
                  Image.asset("assets/plots/F8_30D_plot.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
