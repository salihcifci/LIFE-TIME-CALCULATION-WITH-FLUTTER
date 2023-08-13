import 'package:flutter/material.dart';
import 'package:yasamsuresi/user_data.dart';
import 'hesap.dart';


class ResultPage  extends StatelessWidget {

  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Sonuç Sayfası')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                Hesap(_userData).hesaplama().round().toString(),
                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text('GERİ DÖN', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
