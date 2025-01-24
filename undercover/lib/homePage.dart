import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Unver Cover",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(1000, 240, 0, 0))),
            backgroundColor: Color.fromARGB(255, 255, 184, 184)),
        body: Stack(children:[
          //add further code from here 
        ]
      ));
  }
}
