import 'package:flutter/material.dart';

void main() {
  runApp(tekrar());
}

class tekrar extends StatelessWidget {
  const tekrar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,

          ///height: double.infinity,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Kart"),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                width: 300,
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("profil"),
                    Icon(Icons.person),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.white,
                width: 300,
                child: Column(
                  children: [
                    Image.asset("images/ikardi.jfif"),
                    Text("Muro Icardi"),
                    Text("icardi@gmail.com"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.white,
                height: 35,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Edit"), Icon(Icons.edit)],
                ),
              ),
              Container(
                width: 300,
                height: 35,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("States"),
                    Icon(Icons.camera_alt),
                  ],
                ),
              )
            ],

            ///children
          ),
        ),
      ),
    );
  }
}
