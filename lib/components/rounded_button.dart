import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function onPressed;

  RoundedButton(
      {@required this.color, @required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: <Widget>[
          Material(
            elevation: 5.0,
            color: this.color,
            borderRadius: BorderRadius.circular(30.0),
            child: MaterialButton(
              onPressed: this.onPressed,
              minWidth: 200.0,
              height: 42.0,
              child: Text(
                title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
