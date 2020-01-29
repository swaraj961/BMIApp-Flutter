import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  
                  
                ),
                  ),
                  Expanded(child:ReusableCard(colour: colourofblock,),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardchild});
 
final Color colour;
final  Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
      color: colour
      ),
    );
  }
} 