import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {

  final Color renk;
  final Widget child;
  final Function onPress;
  MyContainer({this.renk, this.child, this.onPress});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0,),
          color: renk,
        ),
      ),
    );
  }
}