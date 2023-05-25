import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'constants.dart';




enum Gender {
  male,
  female,
}

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
  
class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        Expanded(child: Row(
          children: <Widget>[
            Expanded(child:ReusableCard(
              onPress:(){
                setState(() {
                  selectedGender = Gender.male;
                });
              }
              colour:selectedGender == Gender.male
              ? kactiveCardColour 
              : kinactiveCardColour,
            cardChild: IconContent(
              icon: FontAwesomeIcons.mars,
               label: 'MALE',
               ),
            ),
            ),


            Expanded(child: ReusableCard(
               onPress:(){
                setState(() {
                  selectedGender = Gender.female;
                });
              }
              colour: selectedGender == Gender.female 
              ? kactiveCardColour 
              : kinactiveCardColour,
            cardChild: IconContent(
              icon: FontAwesomeIcons.venus,
               label: 'FEMALE',
               ),
            ),
            ),
          ],
        ),
        ),
      


        Expanded(
          child:ReusableCard
          colour: (Color(0xFF1D1E33)
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text(
            'HEIGHT', 
        style: klabelTextStyle,
        ),
        Row(
          mainaxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseLine.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
            style: kNumberTextStyle,
            ),
        Text
        'cm',
        style: kLabelTextStle,
        )
        ],
          ),
        Slider (
          value: height.toDouble(),
          min: 120.0,
          max: 220.0,
          activeColor: Color(0xFFEB1555),
          inactiveColor: Color(0XFF8D8E98),
          onChanged: (double newValue){
            print(newValue);
          }
        )
       ],
     ),
   ),
),

        Expanded(child: Row(
          children: <Widget>[
            Expanded(child: ReusableCard(Color(0xFF1D1E33)
            ),
            ),
            Expanded(
              child: ReusableCard(Color(0xFF1D1E33)
            ),
       ),
          ],
        )
        ),
        Container(
          color: kbottomContainerColour,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kbottomContainerHeight,
          ),
        
        ],
      
      ),

    );
  }
}



