import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color bgColor;
  final Widget cardChild;
  final Function onPress;

  ReuseableCard(
      {@required this.bgColor, this.cardChild, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
