import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rlopt_app/agradecimentos.dart';
import 'package:rlopt_app/background.dart';
import 'package:rlopt_app/boas_vindas.dart';
import 'package:rlopt_app/conclusao.dart';
import 'package:rlopt_app/discussao.dart';
import 'package:rlopt_app/experimentos.dart';
import 'package:rlopt_app/introducao.dart';
import 'package:rlopt_app/referencias.dart';
import 'package:rlopt_app/resultados.dart';
import 'package:rlopt_app/trabalhos_relacionados.dart';
import 'package:rlopt_app/utils.dart';
import 'my_drawer_header.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RLOpt',
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const BoasVindasPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.introducao;
  String appBarTitle = "";
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    StatelessWidget container = const Text("");
    switch (currentPage) {
      case DrawerSections.introducao:
        container = const IntroducaoPage();
        setState(() {
          appBarTitle = "Introdução";
        });
        break;
      case DrawerSections.background:
        container = const BackgroundPage();
        setState(() {
          appBarTitle = "Background";
        });
        break;
      case DrawerSections.trabalhosRelacionados:
        container = const TrabalhosRelacionadosPage();
        setState(() {
          appBarTitle = "Trabalhos Relacionados";
        });
        break;
      case DrawerSections.experimentos:
        container = const ExperimentosPage();
        setState(() {
          appBarTitle = "Experimentos";
        });
        break;
      case DrawerSections.resultados:
        container = const ResultadosPage();
        setState(() {
          appBarTitle = "Resultados";
        });
        break;
      case DrawerSections.discussao:
        container = const DiscussaoPage();
        setState(() {
          appBarTitle = "Discussão";
        });
        break;
      case DrawerSections.conclusao:
        container = const ConclusaoPage();
        setState(() {
          appBarTitle = "Conclusão";
        });
        break;
      case DrawerSections.agradecimentos:
        container = const AgradecimentosPage();
        setState(() {
          appBarTitle = "Agradecimentos";
        });
        break;
      case DrawerSections.referencias:
        container = const ReferenciasPage();
        setState(() {
          appBarTitle = "Referências";
        });
        break;
      default:
        container = const IntroducaoPage();
        break;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Text(
          appBarTitle,
          style: TextStyle(color: theme.secondaryHeaderColor),
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyDrawerHeader(),
              myDrawerList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget myDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          menuItem(1, "Introdução", Icons.article_outlined,
              currentPage == DrawerSections.introducao ? true : false),
          menuItem(2, "Background", Icons.auto_awesome_motion_outlined,
              currentPage == DrawerSections.background ? true : false),
          menuItem(
              3,
              "Trabalhos Relacionados",
              Icons.dashboard_outlined,
              currentPage == DrawerSections.trabalhosRelacionados
                  ? true
                  : false),
          const Divider(),
          menuItem(4, "Experimentos", Icons.science_outlined,
              currentPage == DrawerSections.experimentos ? true : false),
          menuItem(5, "Resultados", Icons.stacked_bar_chart_outlined,
              currentPage == DrawerSections.resultados ? true : false),
          menuItem(6, "Discussão", Icons.forum_outlined,
              currentPage == DrawerSections.discussao ? true : false),
          const Divider(),
          menuItem(7, "Conclusão", Icons.fact_check_outlined,
              currentPage == DrawerSections.conclusao ? true : false),
          menuItem(8, "Agradecimentos", Icons.handshake_outlined,
              currentPage == DrawerSections.agradecimentos ? true : false),
          menuItem(9, "Referências", Icons.collections_bookmark_outlined,
              currentPage == DrawerSections.referencias ? true : false),
          const Divider(),
          menuItem(10, "Logout", Icons.arrow_back, false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            switch (id) {
              case 1:
                currentPage = DrawerSections.introducao;
                break;
              case 2:
                currentPage = DrawerSections.background;
                break;
              case 3:
                currentPage = DrawerSections.trabalhosRelacionados;
                break;
              case 4:
                currentPage = DrawerSections.experimentos;
                break;
              case 5:
                currentPage = DrawerSections.resultados;
                break;
              case 6:
                currentPage = DrawerSections.discussao;
                break;
              case 7:
                currentPage = DrawerSections.conclusao;
                break;
              case 8:
                currentPage = DrawerSections.agradecimentos;
                break;
              case 9:
                currentPage = DrawerSections.referencias;
                break;
              case 10:
                FirebaseAuth.instance.signOut();
                currentPage = DrawerSections.introducao;

              default:
                currentPage = DrawerSections.introducao;
                break;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(children: [
            Expanded(
                child: Icon(
              icon,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ))
          ]),
        ),
      ),
    );
  }
}

enum DrawerSections {
  introducao,
  background,
  trabalhosRelacionados,
  experimentos,
  resultados,
  discussao,
  conclusao,
  agradecimentos,
  referencias,
}
