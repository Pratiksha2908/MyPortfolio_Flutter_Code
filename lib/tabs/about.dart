import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 50.0, top: 30.0, bottom: 30.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About Me',
                            style: TextStyle(
                              color: Color(0xff202A44),
                              fontFamily: "MontserratAlternates-Bold",
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0
                            ),
                          ),
                          SizedBox(height: 30.0,),
                          Text(
                            'I\'ve always had a sense of motivation and passion drive me forward. Whether it\'s exploring unique opportunities, learning additional skills, or meeting new people, I bring these values to every experience throughout my life on a personal and professional level.',
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold,
                              fontFamily: "MontserratAlternates-Bold",
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Text(
                            'Lover of innovation and everything related to generate new knowledge. Face problems with a smile and solve them as soon as possible. Very calculated about the time I spend and the work I do.',
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold,
                              fontFamily: "MontserratAlternates-Bold",
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Text(
                            'To learn more about me, keep exploring my site or reach out directly.',
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                              fontFamily: "MontserratAlternates-Bold",
                            ),
                          ),
                          SizedBox(height: 50.0,),
                          Text(
                            'Basic Information',
                            style: TextStyle(
                                color: Color(0xff202A44),
                                fontFamily: "MontserratAlternates-Bold",
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0
                            ),
                          ),
                          SizedBox(height: 30.0,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'EMAIL:',
                                  style: TextStyle(
                                    color: Color(0xff202A44),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "MontserratAlternates-Bold",
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  ' er.pratikshashinde@gmail.com',
                                  style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "MontserratAlternates-Bold",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'LANGUAGES:',
                                  style: TextStyle(
                                    color: Color(0xff202A44),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "MontserratAlternates-Bold",
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  ' English, Hindi, Marathi',
                                  style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "MontserratAlternates-Bold",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

