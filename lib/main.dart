import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 88.0;
const cardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),

      body: Column(
        children: <Widget>[
        Expanded(child: Row(
          children: <Widget>[
            Expanded(child:ReusableCard(Color(0xFF1D1E33),
            cardChild: IconContent(
              icon: FontAwesomeIcons.mars,
               label: 'MALE',
               ),
            ),
            ),
            Expanded(child: ReusableCard(Color(0xFF1D1E33)
            cardChild: IconContent(
              icon: FontAwesomeIcons.venus,
               label: 'FEMALE',
               ),
            ),
            ),
          ],
        ),
        ),
      

        Expanded(child:ReusableCard(Color(0xFF1D1E33)),
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
          color: bottomContainerColour,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
          ),
        
        ],
      
      ),

    );
  }
}



