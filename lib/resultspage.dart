import 'package:bmiapp/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(child: Text('\t \t Your Result !!', style: kTittletextstyle)),
          Expanded(
            child: ReusableCard(colour: kActivecolor,
            cardchild:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Normal',style:kResulttextstyle),

              Text('25.2', style:kResultnumberstyle),
              Text('Your BMI Result is Quite Low',style:kbmibodytextstyle,)
            ],
            
            ),
            
            ),
            

            flex: 6,
          
          )

        ],
      ),
    );
  }
}
