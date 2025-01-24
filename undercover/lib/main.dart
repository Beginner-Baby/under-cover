import 'package:flutter/material.dart';

void main() {
  runApp(const bro());
}

class bro extends StatelessWidget {
  const bro({super.key});
  @override
  build(BuildContext context) {
    return MaterialApp(
        title: 'blue baby',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: Center(
                  child: Text('Happy Happy!!',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(1000, 192, 1, 1))),
                ),
                backgroundColor: Color.fromARGB(1000, 76, 228, 109)),
            body: mid()
            ));
  }
}

class mid extends StatelessWidget {
  const mid({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Transform.rotate(
            angle:0.2,
          child:Align(
            alignment:Alignment(-0.7,0),
          child :Stack( 
            children :[
                Text("Under",
                    style: TextStyle(
                      fontSize:50,
                      fontWeight:FontWeight.bold,
                      foreground : Paint()
                      ..style=PaintingStyle.stroke
                      ..strokeWidth =6
                      ..color=Colors.black,
                      )
                ),
                Text("Under",
                    style: TextStyle(
                      fontSize:50,
                      fontWeight:FontWeight.bold,
                      color: Color.fromARGB(1000,255, 208, 19)
                                    )
                    )
            ]
        )
          ) 
          ),
        //this is for the cover
          Transform.rotate(
          angle:-0.2,
          child:Align(
          alignment:Alignment(0.7,0),
          child: Stack(
            children:[
              Text(
                  "Cover",
                  style:TextStyle(
                    fontSize:50,
                    fontWeight:FontWeight.bold,
                    foreground: Paint()
                    ..style=PaintingStyle.stroke
                    ..strokeWidth=6
                    ..color=Colors.black,

                  )
                ),
              Text(
                  "Cover",
                  style:TextStyle(
                    fontSize:50,
                    fontWeight:FontWeight.bold,
                    color:Color.fromARGB(1000,255, 208, 19)
                  )

                ) 
            ]
          )
        )
            )
      
          //the rectangle where paly button lie 
          ,Align(
            alignment:Alignment(0,0.55),

            child:Container(
            width: 200,
            height: 100,
            decoration :BoxDecoration(
              borderRadius:BorderRadius.circular(20),
              color : Color.fromARGB(1000,255, 65, 65),
            )
          )  
            )
          //this the for the txt play 
          ,Align(
            alignment:Alignment(0,0.5),
            child:Text("play",
                      style:TextStyle(
                          fontSize:60,
                          fontWeight:FontWeight.bold,
                          color:Color.fromARGB(1000,139, 245, 98),
                        )
                      )
            )
          //hey this is for the image 
          ,Align(
            alignment:Alignment(0,-0.8),
            child:Container(
              width:250,
              height:250,
              child:Image.asset('assets/image/undc_img.jpeg')
            )
          )
          
    ]
      );
  }
}
