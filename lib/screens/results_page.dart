import'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget{

ResultsPage({@required this.bmiResult, @required this.interpretation, @required this.resultText});

final String bmiResult;
final String resultText;
final String interpretation;

  @override
  Widget build(BuildContext){
    return Scaffold(
     appBar: AppBar(
      title: Text('BMI CALCULATOR'),
     ), 

     body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child:Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
         child: Text(
          'Your Result',
        style: kTitleText,
         ),
          ),
         ),

         Expanded(
          flex: 5,
          child: ReusableCard(
            colour: kactiveCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Text(
                resultText.toUpperCase(),
                style: kResultText,
              ),
              Text(
               bmiResult,
                style: kBMIText,
              ),
              Text(
                interpretation,
                textAlign: TextAlign.center,
                style: kBodyStyle,
              ),
              ],
            )
          ),
         ),
         BottomButton(
           buttonTitle: 'RE-CALCULATE',
          onTap: (){
            Navigator.pop(context));
          },
           )
      ],
     )
    );
  }
}