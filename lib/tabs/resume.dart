import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(child: Image.asset('images/resume.jpg',width: 800.0,)),
      ),
    );
  }
}
