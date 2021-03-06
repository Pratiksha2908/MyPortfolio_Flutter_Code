import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/tabs/resume.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/Pratiksha-2.jpeg',),
                radius: 170.0,
              ),
              SizedBox(height: 20.0,),
              Text('Hi, I\'m Pratiksha', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
              SizedBox(height: 8.0,),
              Text('I am an Application Developer', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'MontserratAlternates-Bold',fontSize: 35.0, color: Color(0xff202A44)),),
              SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardWidget('Flutter'),
                  CardWidget('Angular'),
                  CardWidget('Python'),
                  CardWidget('C++'),
                ],
              ),
              SizedBox(height: 30.0,),
              MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) {
                              return ResumeScreen();
                            }
                        )
                    );
                  },
                  child: Container(
                    width: 120.0,
                    height: 45.0,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        colors: [Colors.blue.shade900, Colors.deepPurpleAccent,],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      )
                    ),
                    child: Center(
                        child: Text('GET CV',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "MontserratAlternates-Bold",
                          ),
                        )
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String txt;
  CardWidget(this.txt);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
      elevation: 20.0,
      color: Color(0xff202A44),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "MontserratAlternates-Bold",
          ),
        ),
      ),
    );
  }
}

