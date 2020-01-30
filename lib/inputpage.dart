import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
const colourofblock = Color(0xFF1D1E33);
const buttomcontainerheight = 80.0;
const buttomcontainercolor = Color(0xFFEA1556);
class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
  
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row( // for row  boxes -2
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: colourofblock,
                  cardchild: IconContent(
                    mficons: FontAwesomeIcons.mars,
                    label: 'MALE',

                  ),
                  
                  
                ),
                  ),
                  Expanded(child:ReusableCard(colour: colourofblock,
                  cardchild:IconContent(
                    mficons: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  ),
                  ),
                ],
              ),
            ),
            Expanded(child:ReusableCard(colour: colourofblock,),
                  ),

            Expanded(child: Row( // for row box -2
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: colourofblock,),
                  ),
                  Expanded(child:ReusableCard(colour: colourofblock,),
                  ),
                ],
              ),
              ),
            Container(
              
              color: buttomcontainercolor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: buttomcontainerheight,
            ) ,
          ],
        ),
    );
  }
}


