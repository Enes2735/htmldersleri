
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const yemek());
}

class yemek extends StatefulWidget {
  const yemek({super.key});

  @override
  State<yemek> createState() => _yemekState();
}

class _yemekState extends State<yemek> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Bugün Ne yesem?",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        body: MenuYemek(),
      ),
    );
  }
}

class MenuYemek extends StatefulWidget {
  const MenuYemek({super.key});

  @override
  State<MenuYemek> createState() => _MenuYemekState();
}

class _MenuYemekState extends State<MenuYemek> {
  int sayi = 1;
  int sayi1 = 1;
  int sayi2 = 1;
  int topla=0;
  List corbaadlar = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuk Çorbası',
    'Kellepaça Çorbası',
    'Yayla Çorbası'
  ];
  List tatliadlar = ['Kadayıf', 'Baklava','Sütlaç', 'Kazandibi' , 'dondurma'];
  List yemekadlar = ['Karnıyarık', 'Mantı', 'Fasulye', 'İçliköfte', 'Balık'];
  List corbafiyatlar = [50, 160, 70, 80, 50];
  List tatlifiyatlar = [50, 60, 170, 80, 50];
  List yemekfiyatlari = [150, 60, 170, 80, 50];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  sayi = rastgelesayi();
                  Yenile();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (sayi > 1) {
                            sayi--;
                          }
                        });
                      },
                      child: Text("<"),
                    ),
                    Image.asset(
                      "images/corba_$sayi.jpg",
                      height: 150,
                      width: 150,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(sayi<5)
                          {
                              sayi++;
                          }
                        });
                      },
                      child: Text(">"),
                    ),
                  ],

                ),
              ),
            ),


            Text("Fiyat="+corbafiyatlar[sayi-1].toString()),
            Text(corbaadlar[sayi - 1]),
            SizedBox(
              width: 200,
              child: Divider(
                height: 5,
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  sayi1 = rastgelesayi();
                  Yenile();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (sayi1 > 1) {
                            sayi1--;
                          }
                        });
                      },
                      child: Text("<"),
                    ),
                    Image.asset(
                      "images/tatli_$sayi1.jpg",
                      height: 150,
                      width: 150,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (sayi1< 5) {
                            sayi1++;
                          }
                          topla=corbafiyatlar[sayi-1]+yemekfiyatlari[sayi2-1]+tatlifiyatlar[sayi1-1];
                        });
                      },
                      child: Text(">"),
                    ),
                  ],
                ),
              ),
            ),
            Text(tatliadlar[sayi1 - 1]),
            SizedBox(
              width: 200,
              child: Divider(
                height: 5,
              ),
            ),
            Text("Fiyat="+tatlifiyatlar[sayi1-1].toString()),
            Expanded(
              child: InkWell(
                onTap: () {
                  sayi2 = rastgelesayi();
                  Yenile();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (sayi2 > 1) {
                            sayi2--;
                          }
                          topla=corbafiyatlar[sayi-1]+yemekfiyatlari[sayi2-1]+tatlifiyatlar[sayi1-1];
                        });
                      },
                      child: Text("<"),
                    ),
                    Image.asset(
                      "images/yemek_$sayi2.jpg",
                      height: 150,
                      width: 150,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (sayi2< 5) {
                            sayi2++;
                          }
                          topla=corbafiyatlar[sayi-1]+yemekfiyatlari[sayi2-1]+tatlifiyatlar[sayi1-1];
                        });
                      },
                      child: Text(">"),
                    ),
                  ],
                ),
              ),
            ),
            Text("Fiyat="+yemekfiyatlari[sayi2-1].toString()),
            Text(yemekadlar[sayi2-1]),

            SizedBox(
              width: 200,
              child: Divider(
                height: 5,
              ),
            ),

            Row(
              children: [
              TextButton(onPressed: () {

              }, child: Text("Hesapla"),),
                Container(
                  height: 50,
                  width: 50,
                  child:Text(topla.toString()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  int rastgelesayi() {
    return Random().nextInt(5) + 1;
  }
  void Yenile() {
    setState(() {});
  }
}
