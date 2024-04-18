import 'package:calculadora/calculos.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final _memory = Memory(); //inicializo a classe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Text(
          'Calculadora',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          _memory.result,
                          style: TextStyle(fontSize: 80, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            botao('AC', Colors.blue),
                            botao('DEL', Colors.blue),
                            botao('%', Colors.blue),
                            botao('÷', Colors.blue),
                          ],
                        ),
                        Row(
                          children: [
                            botao('7', Colors.white),
                            botao('8', Colors.white),
                            botao('9', Colors.white),
                            botao('x', Colors.blue),
                          ],
                        ),
                        Row(
                          children: [
                            botao('4', Colors.white),
                            botao('5', Colors.white),
                            botao('6', Colors.white),
                            botao('+', Colors.blue),
                          ],
                        ),
                        Row(
                          children: [
                            botao('1', Colors.white),
                            botao('2', Colors.white),
                            botao('3', Colors.white),
                            botao('-', Colors.blue),
                          ],
                        ),
                        Row(
                          children: [
                            botao('0', Colors.white),
                            botao('.', Colors.white),
                            botao('=', Colors.blue),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //preciso do contexyo
  Widget botao(value, color) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.all(8.0), // Adiciona espaçamento em todos os lados
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent, // Cor de fundo
          ),
          onPressed: () {
            setState(() {
              _memory.applyCommand(value);
            });
          },
          child: Text(
            value,
            style: TextStyle(
                color: color, fontSize: 40, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
