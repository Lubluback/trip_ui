import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Containers2 extends StatelessWidget {
  const Containers2({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      margin: EdgeInsets.only(right: 4),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          // image: const DecorationImage(
          //   image: AssetImage(images[index]),
          //   fit: BoxFit.cover
          // ),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'TitilliumWeb',
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
