import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {

ResultsPage({required this.interpretation, required this.bmiResult, required this.resultText});

  final double bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Seu Resultado',
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cor: Colors.amber,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    bmiResult.toStringAsFixed(0),
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Text(
                    interpretation,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ]
              ),
            ),
          ),
          GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child:Container(
            height: 60.0,
            color: Colors.pink,
              child: Center(
                child:Text(
                'RECALCULAR',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
        ]
      ),
      );
  }
}
