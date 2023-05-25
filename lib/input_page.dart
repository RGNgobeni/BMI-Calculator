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
  int weight = 60;


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
        SliderTheme(
            data.SliderTheme.of(context).copyWith(
              inactiveTrackColor: Color(0XFF8D8E98),
              activeTrackColor: Colors.white,
            thumbColor: Color(0xFFEB15555),
            overlayColor: Color(0x29EB15555),
            thumbShape: 
            RoundSliderThumbShape(enableThumbRaius: 15.0),
            overlayShape: 
            RoundSliderOverlayShape(overLayRadius: 30.0),
            ),
       child: Slider (
          value: height.toDouble(),
          min: 120.0,
          max: 220.0,
          
          onChanged: (double newValue){
            setState(() {
                 height = newValue.round();
            });
         
          },
        )
       ],
     ),
   ),
)
);


        Expanded(
          child: Row(
          children: <Widget>[
            Expanded(child: ReusableCard(
              Colour: kActiveCArdColour,
              cardChild: Column(
                children: <Widget>[
                  Text(
                    'WEIGHT',
                    style: kLabelTextStyle,
                  ),
                Text(
                  weight.toString(),
                  style: kNumberTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundIconButton(
                      icon: FontAwesomeIcons.minus
                      ),
                    SizedBox(width: 10.0,),
                
                ]

                  RoundIconButton(
                    icon: FontAwesomeIcons.plus
                    ),
                ),
              ),
              ),

              )
            ),
            ),
            Expanded(
              child: ReusableCard(Color(0xFF1D1E33)
            ),
       ),
          ],
        ),
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

class RoundIconButton extends StatefulWidget {

RoundIconButton({this.icon});
final IconData icon;

  @override
  Widget build(BuildContext){
   return RawMaterialButton(
    child: Icon(icon),
    onPressed: () {},
    elevation: 6.0,
    constraints: BoxConstraints.tightFor(
      width: 56.0,
      height: 56.0,
    ),
    shape: CircleBorder(
      fillColor: Color(0xFF4C4F5E),

    ),

   ); 
  }
}

