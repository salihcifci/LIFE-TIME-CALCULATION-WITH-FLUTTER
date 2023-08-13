import 'package:flutter/material.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:yasamsuresi/result_page.dart';
import 'package:yasamsuresi/user_data.dart';
import './icon_cinsiyet.dart';
import './my_container.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String seciliCinsiyet;
  double icilenSu=0.0;
  double yurunulenKm=0.0;
  int boy=150;
  int kilo=30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM SÜRESİ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: -1,
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(renk: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text('KİLO', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                        Text(kilo.toString(), style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                        Row(children: <Widget>[
                          SizedBox(width: 15),
                          OutlinedButton(
                            child: Icon(faIconNameMapping['minus'], size: 30, color: Colors.black),
                            onPressed:(){
                              setState(() {
                                kilo--;
                              });
                              },
                          ),
                          SizedBox(width: 20),
                          OutlinedButton(
                            child: Icon(faIconNameMapping['plus'], size: 30, color: Colors.black),
                            onPressed:(){
                              setState(() {
                                kilo++;
                              });
                              },
                          )
                        ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                child: MyContainer(renk: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('BOY', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                      Text(boy.toString(), style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                      Row(children: <Widget>[
                        SizedBox(width: 15),
                        OutlinedButton(
                          child: Icon(faIconNameMapping['minus'], size: 30, color: Colors.black),
                          onPressed:(){
                            setState(() {
                              boy--;
                            });
                            print('Sol Buton');},),
                        SizedBox(width: 20),
                        OutlinedButton(
                          child: Icon(faIconNameMapping['plus'], size: 30, color: Colors.black),
                          onPressed:(){
                            setState(() {
                              boy++;
                            });
                            print('Sol Buton');},)
                      ],
                      ),
                    ],
                  ),
                ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(renk: Colors.yellowAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('Günde Kaç Bardak Su İçiyorsunuz?',
                style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(icilenSu.round().toString(), style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),),
                Slider(activeColor: Colors.red, min: 0, max:20, value: icilenSu, onChanged: (double newValue)
              {
                setState(() {
                icilenSu=newValue;
                   });
              })
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(renk: Colors.indigo,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Günde Kaç KM Yol Yürüyorsunuz?',
                    style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(yurunulenKm.round().toString(), style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),),
                  Slider(activeColor: Colors.red, min: 0, max:20, value: yurunulenKm, onChanged: (double newValue)
                  {
                    setState(() {
                      yurunulenKm=newValue;
                    });

                  })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: (){
                      setState(() {
                        seciliCinsiyet='KADIN';
                      });
                    },
                    renk: seciliCinsiyet=='KADIN'?Colors.orange[400]:Colors.pink,
                    child: IconCinsiyet(cinsiyet: 'KADIN', icon: faIconNameMapping['venus'],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: (){
                      setState(() {
                        seciliCinsiyet='ERKEK';
                      });
                    },
                    renk: seciliCinsiyet=='ERKEK'?Colors.orange[400]:Colors.blue,
                    child: IconCinsiyet(cinsiyet: 'ERKEK', icon: faIconNameMapping['mars'],
                    ),
                    ),
                  ),
              ],
            ),
          ),
          ButtonTheme(
            height: 1,
            child: TextButton(

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(

                    UserData(seciliCinsiyet:seciliCinsiyet,icilenSu:icilenSu,yurunulenKm:yurunulenKm,boy:boy,kilo:kilo)

                  )));
                },
                child: Text(
                  'HESAPLA',
                  style: TextStyle(color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),

                )
            ),
          )
        ],
      )
        

      /*floatingActionButton: Theme(
        data: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red,)),
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),*/
    );
  }
}





