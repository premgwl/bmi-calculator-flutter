import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton({Key key, this.onTap, this.buttonTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeTextStyle,
          ),
        ),
        color: Colors.pink,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        padding: EdgeInsets.only(bottom: 15.0),
      ),
    );
  }
}
