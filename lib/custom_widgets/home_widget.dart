import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key? key, required this.data, required this.color}) : super(key: key);

  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        color: color,
        child: Center(
          child: Text(
            this.data,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
