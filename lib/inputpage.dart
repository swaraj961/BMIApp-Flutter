import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
const activecolor = Color(0xFF1D1E33);
const inactivecolor = Color(0xFF111328);
const buttomcontainerheight = 80.0;
const buttomcontainercolor = Color(0xFFEA1556);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolour =inactivecolor;

  Color femalecardcolour  = activecolor;
  //male =1 , female =2;

void updatecolor(int gender) {
  if(gender==1){
    if(malecardcolour==inactivecolor){
      malecardcolour=activecolor;

    } else {
      malecardcolour=inactivecolor;
    }
  
  }

}

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
                  Expanded(child: GestureDetector(
                    onTap: (){
                      setState(() {
                        
                      updatecolor(1);
                      });
                    },
                                      child: ReusableCard(colour: activecolor,
                    cardchild: IconContent(
                      gendericons: FontAwesomeIcons.mars,
                      label: 'MALE',

                    ),
                    
                    
                ),
                  ),
                  ),
                  Expanded(child:ReusableCard(colour: activecolor,
                  cardchild:IconContent(
                    gendericons: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  ),
                  ),
                ],
              ),
            ),
            Expanded(child:ReusableCard(colour:activecolor,),
                  ),

            Expanded(child: Row( // for row box -2
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: activecolor,),
                  ),
                  Expanded(child:ReusableCard(colour: activecolor,),
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


