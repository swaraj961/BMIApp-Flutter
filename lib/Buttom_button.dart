import 'package:flutter/material.dart';
import 'constants.dart';
class ButtomButton extends StatelessWidget {
  ButtomButton({this.ontap,this.buttontext});
  final Function ontap;
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap
      ,
      child: Container(
        padding: EdgeInsets.only(bottom: 6),
        color: kButtomcontainercolor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kButtomcontainerheight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              buttontext,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}