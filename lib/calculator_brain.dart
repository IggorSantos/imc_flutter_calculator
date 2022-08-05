import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.height, required this.weight});

  final int weight;
  final int height;
  final double bmi = 0;


  double calculatorBMI(){
    double bmi = weight / pow(height/100,2);
    return bmi;
  }

  String getResult(bmi){
  print(bmi);
    if(bmi >= 25){
      return 'Acima do peso';
    } else if(bmi > 18.5){
      return 'Normal';
    } else{
      return 'Abaixo do peso';
    }
  }

  String getInterpretation(bmi){
    if(bmi >= 25){
      return 'Você está acima do peso. Tente se exercitar um pouco mais';
    } else if(bmi > 18.5){
      return 'Você está com um peso normal. Bom trabalho';
    } else{
      return 'Você está abaixo do peso. Tente comer um pouco mais';
    }
  }
}
