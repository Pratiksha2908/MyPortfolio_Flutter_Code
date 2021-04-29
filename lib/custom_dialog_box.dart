import 'dart:ui';
import 'package:portfolio/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text, ok, url;

  const CustomDialogBox({Key key, this.title, this.descriptions, this.text, this.ok, this.url}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Container(
      margin: EdgeInsets.only(top: 50.0, bottom: 50.0),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(Constants.padding),
          boxShadow: [
            BoxShadow(color: Colors.black,offset: Offset(0,10),
                blurRadius: 10
            ),
          ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(widget.title,textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.blue.shade700),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
            child: Text(widget.descriptions,style: TextStyle(fontSize: 20, color: Colors.blue.shade700),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 22,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0, right: 10.0),
                child: MaterialButton(
                    onPressed: () async {
                      if(await canLaunch("https://github.com/Pratiksha2908?tab=repositories")) {
                        await launch("https://github.com/Pratiksha2908?tab=repositories");
                      }
                    },
                    child: Text(widget.ok,style: TextStyle(fontSize: 18, color: Colors.green.shade900, fontWeight: FontWeight.bold),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0, right: 30.0),
                child: MaterialButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text(widget.text,style: TextStyle(fontSize: 18, color: Colors.red.shade900, fontWeight: FontWeight.bold),)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}