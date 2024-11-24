import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResponsiveButton extends StatelessWidget {
  final double width;
  final IconData? icons;
  final String text;

  const ResponsiveButton(
      {super.key, required this.width, this.icons, this.text = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade300),
      width: width,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icons,
            color: Colors.black.withOpacity(0.6),
          ),
          Text(text),
        ],
      ),
    );
  }
}
