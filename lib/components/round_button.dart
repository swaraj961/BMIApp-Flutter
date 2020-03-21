import 'package:flutter/material.dart';
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
