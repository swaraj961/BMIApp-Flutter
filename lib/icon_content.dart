import 'package:flutter/material.dart';
const labeltextstyle =TextStyle(fontSize: 18,
 color: Color(0xFF8D8E98),);
class IconContent extends StatelessWidget {
  const IconContent({ this.gendericons, this.label
    
   
  });
   final IconData gendericons;
   final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gendericons,
          size: 80.0,
          color: Colors.white,

        ),
        SizedBox(
          height: 15.0,
        ),
       Text(
         label,
       style: labeltextstyle
       ),
      ],
    );
  }
}
