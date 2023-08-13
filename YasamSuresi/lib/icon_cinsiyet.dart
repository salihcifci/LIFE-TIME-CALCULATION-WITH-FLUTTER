import 'package:flutter/material.dart';


class IconCinsiyet extends StatelessWidget {

  final String cinsiyet;
  final IconData icon;

  IconCinsiyet({this.cinsiyet,this.icon});

  //faIconNameMapping['venus']!,

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Icon(icon, size: 50, color: Colors.black),
        SizedBox(height: 15,),
        Text(cinsiyet,style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        )],
    );
  }
}