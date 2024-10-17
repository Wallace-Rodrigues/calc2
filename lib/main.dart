import 'package:flutter/material.dart';
import 'package:flutter_operacoes/divisao.dart';
import 'package:flutter_operacoes/mutiplicacao.dart';
import 'package:flutter_operacoes/soma.dart';
import 'package:flutter_operacoes/subtracao.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Widget atual = const Soma();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        atual = const Soma();
                      });
                    },
                    child: const Text('Soma')),
                TextButton(
                    onPressed: () {
                      setState(() {
                        atual = const Subtracao();
                      });
                    },
                    child: const Text('Subtração')),
                TextButton(
                    onPressed: () {
                      setState(() {
                        atual = const Multiplicacao();
                      });
                    },
                    child: const Text('Multiplicação')),
                TextButton(
                    onPressed: () {
                      setState(() {
                        atual = const Divisao();
                      });
                    },
                    child: const Text('Divisão')),
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text('Matemática'),
          ),
          body: atual,
        ),
      ),
    );
  }
}
