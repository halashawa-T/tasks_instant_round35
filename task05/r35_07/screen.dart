import 'package:flutter/material.dart';
main(){
  runApp(MyScreenState());
}

class MyScreen extends StatefulWidget {
  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  double height = 180;
 double weight= 70;
 int age = 18;
 Color bg=  Color(0xFF080E1C);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF080E1C),
        ),


        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Color(0xFF190549),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton( onPressed: (){
                                 setState(() {
                                   bg = Color(0xFFFFC0CB);
                                 });
                              },
                              child:  Icon(Icons.female, size: 50, color: Colors.white),
                              ),

                              SizedBox(height: 10),
                              Text(
                                "Female",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFF190549),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton( onPressed: (){
                                setState(() {
                                  bg = Color(0xFF001F54);
                                });
                              },
                                child:  Icon(Icons.female, size: 50, color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Male",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Container(
                      height: 150,
                      width: 420,
                      decoration: BoxDecoration(
                        color: Color(0xFF190549),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            "${height.round()} cm",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Slider(
                            value: height,
                            min: 100,
                            max: 220,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                              });
                            },
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                    SizedBox(height:10),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Color(0xFF190549),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                "${weight} kg",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[

                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(Icons.add_rounded, color: Colors.white, size: 30),
                              ),

                              SizedBox(width: 10),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(Icons.remove_rounded, color: Colors.white, size: 30),
                              ),

                             ], ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFF190549),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                "${age}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[

                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: Icon(Icons.add_rounded, color: Colors.white, size: 30),
                                  ),

                                  SizedBox(width: 10),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    icon: Icon(Icons.remove_rounded, color: Colors.white, size: 30),
                                  ),

                                ], ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                

                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
