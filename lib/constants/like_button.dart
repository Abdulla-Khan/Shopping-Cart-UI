import 'package:flutter/material.dart';

class LikeButtons extends StatefulWidget {
  @override
  _LikeButtonsState createState() => _LikeButtonsState();
}

class _LikeButtonsState extends State<LikeButtons> {
  bool isLiked = false;
  Color bgColor = Colors.white;
  Color heartColor = Colors.grey;

  void like() {
    setState(() {
      bgColor = bgColor == Colors.white ? Colors.red : Colors.white;
      heartColor = heartColor == Colors.grey ? Colors.white : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: like,
      child: CircleAvatar(
        backgroundColor: bgColor,
        radius: 18,
        child: Icon(
          Icons.favorite_outline,
          color: heartColor,
          size: 18,
        ),
      ),
    );
  }
}
