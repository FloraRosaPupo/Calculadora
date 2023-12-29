import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Container(
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          color: Colors.black,
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          //height: MediaQuery.of(context).size.height * 0.4,
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.black,
                    child: TextButton(
                      child: Text('AC'),
                      onPressed: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

appBar() {
  return AppBar(
    title: Text(
      'Calculadora',
    ),
    backgroundColor: Colors.black,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
  );
}
