import 'package:bmiapp/resultspage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedgender;
  int height = 180;
  int weight = 50;
  int age = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              // for row  boxes -2
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        selectedgender = GenderType.male;
                      });
                    },
                    colour: selectedgender == GenderType.male
                        ? kActivecolor
                        : kInactivecolor,
                    cardchild: IconContent(
                      gendericons: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        selectedgender = GenderType.female;
                      });
                    },
                    colour: selectedgender == GenderType.female
                        ? kActivecolor
                        : kInactivecolor,
                    cardchild: IconContent(
                      gendericons: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                colour: kActivecolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabeltextstyle,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, //along the lenght of row,
                      crossAxisAlignment:
                          CrossAxisAlignment.baseline, //along the width,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          '$height',
                          style: kNumberTextstyle,
                        ),
                        Text(
                          'cm',
                          style: kLabeltextstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFFEB1555),
                          activeTrackColor: Color(0xFFEB1555),
                          inactiveTrackColor: Color(
                              0xFF8D8E98), //taking only few property of theme data
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                )),
          ),

          Expanded(
            child: Row(
              // for row box -2
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kLabeltextstyle),
                        Text(
                          '$weight',
                          style: kNumberTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              iconinfo: FontAwesomeIcons.minus,
                              ontap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            RoundIconButton(
                              iconinfo: FontAwesomeIcons.plus,
                              ontap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    colour: kActivecolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActivecolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE', style: kLabeltextstyle),
                        Text(
                          '$age',
                          style: kNumberTextstyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                iconinfo: FontAwesomeIcons.minus,
                                ontap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(width: 30),
                              RoundIconButton(
                                iconinfo: FontAwesomeIcons.minus,
                                ontap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              )
                            ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //pink lowerpart
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return ResultPage();
              
              }),
              );
              
            },
                      child: Container(
             padding: EdgeInsets.only(bottom: 6),
              color: kButtomcontainercolor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kButtomcontainerheight,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[

                 Text('CALCULATE',style: TextStyle(
                fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
                 ),)
               ],),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  //can be more customised
  RoundIconButton({this.iconinfo, this.colour, this.ontap});
  final IconData iconinfo;
  final Color colour;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: ontap,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6,
      child: Icon(
        iconinfo,
        color: Colors.white,
      ),
    );
  }
}
