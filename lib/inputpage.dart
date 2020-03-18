import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
const activecolor = Color(0xFF1D1E33);
const inactivecolor = Color(0xFF111328);
const buttomcontainerheight = 80.0;
const buttomcontainercolor = Color(0xFFEA1556);
enum GenderType{
  male ,
  female,
}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 
GenderType selectedgender ; 
/* 
Color malecardcolour= inactivecolor;
Color femalecardcolour = inactivecolor;
/
 void updategender( GenderType gender){
  //malecard was pressed 
  if(gender == GenderType.male){
    if(malecardcolour== inactivecolor) {
      malecardcolour= activecolor;
      femalecardcolour =inactivecolor;
    }
  } else {
    malecardcolour = inactivecolor;
  }
 if (gender == GenderType.female){
   if(femalecardcolour == inactivecolor) {
femalecardcolour=activecolor;
malecardcolour=inactivecolor;
  }
   } else{
femalecardcolour = inactivecolor;
}
 
}
*/

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
                       
            selectedgender = GenderType.male;
                     });
                   
                    },
                     child: ReusableCard(
                       colour: selectedgender == GenderType.male ? activecolor:inactivecolor,
                    cardchild: IconContent(
                      gendericons: FontAwesomeIcons.mars,
                      label: 'MALE',

                    ),
                    
                    
                ),
                  ),
                  ),
                  Expanded(child:GestureDetector(
                    onTap: (){
                    setState(() {
                      selectedgender = GenderType.female;
                    });
                    },
                                      child: ReusableCard(
                      colour:selectedgender == GenderType.female? activecolor:inactivecolor,
                    cardchild:IconContent(
                      gendericons: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
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


