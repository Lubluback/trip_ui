import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({super.key, required this.text1});
  final String? text1;

  @override
  Widget build(BuildContext context) {
    return RichText(
      // Controls visual overflow
      overflow: TextOverflow.clip,

      // Controls how the text should be aligned horizontally
      textAlign: TextAlign.start,

      // Control the text direction
      textDirection: TextDirection.ltr,

      // Whether the text should break at soft line breaks
      softWrap: true,

      // Maximum number of lines for the text to span
      //maxLines: 7,

      // The number of font pixels for each logical pixel
      //  textScaler: ,
      text: TextSpan(
        text: 'Trips\n',
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
              text: 'Mountains\n',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(0.7))),
          TextSpan(
              text: text1,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "TitilliumWeb",
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5))),
        ],
      ),
    );
  }
}
