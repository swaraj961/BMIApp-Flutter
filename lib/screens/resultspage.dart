import 'package:bmiapp/components/Buttom_button.dart';
import 'package:bmiapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmiapp/components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiresult,
      @required this.interpretationl,
      @required this.resulttext});

  final String bmiresult;
  final String resulttext;
  final String interpretationl;
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
          Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 2),
                  child: Text('\t \t \t Your Result !!',
                      style: kTittletextstyle))),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ReusableCard(
              colour: kActivecolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resulttext.toUpperCase(), style: kResulttextstyle),
                  Text(bmiresult, style: kResultnumberstyle),
                  Text(
                    interpretationl,
                    style: kbmibodytextstyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            flex: 6,
          ),
          ButtomButton(
            ontap: () {
              Navigator.pop(context);
            },
            buttontext: "RE-CALCULATE ",
          )
        ],
      ),
    );
  }
}
