import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menu()
    );
  }
}

class Menu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text("TEST UYGULAMASI")
        ),
      body: Center(
        child: Column(
            children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 130),
                    child: Text("HOŞGELDİN",style: TextStyle(fontSize: 46, color: Colors.black))),

                Container(
                height: 60,
                width: 200,
                margin: EdgeInsets.only(top: 60),
                child: RaisedButton(
                  color: Colors.grey[350],
                  child: Text("TESTE BAŞLA!",style: TextStyle(fontSize: 24,color: Colors.black)),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Test()));
                  },
                ),
              ),


              ]
        ),
      )
    );
  }
}
int truee =0;
int falsee =0;
class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<String> questions = ["Aşağıda verilen ilk çağ uygarlıklarından hangisi yazıyı icat etmiştir?",
    "Işığın saniyedeki hızı kaçtır?",
    "Aşağıdakilerden hangisi Dünya Sağlık Örgütünün kısaltılmış ismidir?",
    "Hangi gezegen Güneş'e daha uzaktır?",
    "Hollanda’nın Başkenti Nedir?",
    "Hangisi bir asal sayıdır?",
    "“Sinekli Bakkal” romanının yazarı aşağıdakilerden hangisidir?",
    "Hangi şirketin değeri daha fazladır?",
    "Sanayi devrimi ilk olarak hangi ülkede gerçekleşmiştir?",
    "Ünlü İspanyol ressam ve heykeltraş Pablo Picasso hangi akımın öncüsüdür?",
  ];
  List<String> answersButton1 = ["Hititler","300.000 km/sn","Uhw","Uranüs","Berlin","2","Reşat Nuri Güntekin","Google", "Almanya","İmpresyonizm"];
  List<String> answersButton2 = ["Elamlar","250.000 km/sn","Unıcef","Mars","Amsterdam","9","Halide Edip Adıvar","Apple","İtalya","Kübizm"];
  List<String> answersButton3 = ["Sümerler","300.000 m/sn","Nato","Jupiter","Paris","4","Ziya Gökalp","Facebook","İngiltere","Sürrealizm"];
  List<String> answersButton4 = ["Urartular","250.000 m/sn","Who","Satürn","New York","14","Ömer Seyfettin","Amazon"," Fransa","Fütürizm"];
  int index=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
     appBar: AppBar(
       backgroundColor: Colors.indigo,
       title: Text(""),),
      body: Center(
        child:  Column(
            children: <Widget>[
              Container(
                    width: 150,
                  height: 100,
                 child: Image.asset("assets/indir.jfif")
              ),
                 Card(
                   margin: EdgeInsets.all(5),
                  color: Colors.teal[200],
                  child: Text((index+1).toString() + ". SORU: ", style: TextStyle(fontSize: 32),),

              ),
              Container(
                width: 300,
                  height: 100,
                  margin: EdgeInsets.only(left: 50, right: 50, top: 5),
                  child: Text(questions[index], style: TextStyle(color: Colors.black, backgroundColor: Colors.grey[200], fontSize: 22),
                      textAlign: TextAlign.center
                  )
              ),
              Container( //1. buton
                width: 230,
                height: 50,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  color: Colors.grey[200],
                  onPressed: (){
                    if(index==0){
                      falsee++;
                    }
                    if(index==1){
                      truee++;
                    }
                    if(index==2){
                      falsee++;
                    }
                    if(index==3){
                      truee++;
                    }
                    if(index==4){
                      falsee++;
                    }
                    if(index==5){
                      truee++;
                    }
                    if(index==6){
                      falsee++;
                    }
                    if(index==7){
                      falsee++;
                    }
                    if(index==8){
                      falsee++;
                    }
                    if(index==9){
                      falsee++;
                      index++;
                    }
                     if(index!=10) {
                       setState(() {
                         index++;
                       });
                     }
                    if(index==10){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => Result()));
                    }
                    print(truee);
                    print(falsee);
                    print("index:");
                    print(index);
                  },
                  child: Text(answersButton1[index],style: TextStyle(fontSize: 20)),
                ),
              ),
              Container( // 2. buton
                width: 230,
                height: 50,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  color: Colors.grey[200],
                  onPressed: (){
                    if(index==0){
                      falsee++;
                    }
                    if(index==1){
                      falsee++;
                    }
                    if(index==2){
                      falsee++;
                    }
                    if(index==3){
                      falsee++;
                    }
                    if(index==4){
                      truee++;
                    }
                    if(index==5){
                      falsee++;
                    }
                    if(index==6){
                      truee++;
                    }
                    if(index==7){
                      falsee++;
                    }
                    if(index==8){
                      falsee++;
                    }
                    if(index==9){
                      truee++;
                      index++;
                    }
                    if(index!=10) {
                      setState(() {
                        index++;
                      });
                    }
                    if(index==10){
                   Navigator.push(context,MaterialPageRoute(
                       builder: (context) => Result()));

                    }
                    print(truee);
                    print(falsee);
                  },
                  child: Text(answersButton2[index],style: TextStyle(fontSize: 20)),
                ),
              ),
              Container( // 3. buton
                width: 230,
                height: 50,
                margin: EdgeInsets.all(10),
                child: RaisedButton(

                  color: Colors.grey[200],
                  onPressed: (){
                    if(index==0){
                      truee++;
                    }
                    if(index==1){
                      falsee++;
                    }
                    if(index==2){
                      falsee++;
                    }
                    if(index==3){
                      falsee++;
                    }
                    if(index==4){
                      falsee++;
                    }
                    if(index==5){
                      falsee++;
                    }
                    if(index==6){
                      falsee++;
                    }
                    if(index==7){
                      falsee++;
                    }
                    if(index==8){
                      truee++;
                    }
                    if(index==9){
                      falsee++;
                      index++;
                    }
                    if(index!=10) {
                      setState(() {
                        index++;
                      });
                    }
                    if(index==10){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => Result()));
                    }
                    print(truee);
                    print(falsee);
                  },
                  child: Text(answersButton3[index],style: TextStyle(fontSize: 20)),
                ),
              ),
              Container(
                width: 230,
                height: 50,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  color: Colors.grey[200],
                  onPressed: (){
                    if(index==0){
                      falsee++;
                    }
                    if(index==1){
                      falsee++;
                    }
                    if(index==2){
                      truee++;
                    }
                    if(index==3){
                      falsee++;
                    }
                    if(index==4){
                      falsee++;
                    }
                    if(index==5){
                      falsee++;
                    }
                    if(index==6){
                      falsee++;
                    }
                    if(index==7){
                      truee++;
                    }
                    if(index==8){
                      falsee++;
                    }
                    if(index==9){
                      falsee++;
                      index++;
                    }
                    if(index!=10) {
                      setState(() {
                        index++;
                      });
                    }
                    if(index==10){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => Result()));

                    }
                    print(truee);
                    print(falsee);
                  },
                  child: Text(answersButton4[index],style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),

    );
  }
}

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.indigo,

        ),
        body: Column(
            children: <Widget>[

                 Container(
                   margin: EdgeInsets.only(top:32,left:16,right: 16,bottom: 32),
                   child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          child: ListTile(
                            title: Text("Doğru sayısı: "+ truee.toString(),style: TextStyle(fontSize: 14),),
                            leading: Icon(Icons.done, color: Colors.green,),
                          )
                        )
                      ),
                      Expanded(
                          child: Card(
                              child: ListTile(
                                title: Text("Yanlış sayısı: "+ falsee.toString(),style: TextStyle(fontSize: 14)),
                                leading: Icon(Icons.close, color: Colors.red,),
                              )
                          )
                      ),
                    ],
                ),
                 ),

              Container(
                height: 60,
                width: 200,
                margin: EdgeInsets.only(top: 60),
                child: RaisedButton(
                  child: Text("Tekrar oyna",style: TextStyle(fontSize: 26)),
                  onPressed: (){
                    truee=0;
                    falsee=0;
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Test()));
                  },
                ),
              ),

              Container(
                height: 60,
                width: 200,
                margin: EdgeInsets.only(top: 60),
                child: RaisedButton(
                  child: Text("ÇIKIŞ",style: TextStyle(fontSize: 26)),
                  onPressed: (){
                    SystemNavigator.pop();
                  },
                ),
              ),
            ]
        )
    );
  }
}
