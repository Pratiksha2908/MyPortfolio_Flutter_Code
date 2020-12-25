import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/me.png'),
          SizedBox(height: 15.0,),
          Text(
            "Pratiksha Shinde",
            style: TextStyle(
              color: Color(0xff202A44),
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontFamily: "MontserratAlternates-Bold",
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 300.0,
            child: Divider(
              color: Colors.blue.shade700,
            ),
          ),
          Text(
            "FOLLOW ME",
            style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontFamily: "MontserratAlternates-Bold",
            ),
          ),
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignInButton(
                Buttons.LinkedIn,
                elevation: 10.0,
                mini: true,
                onPressed: () async {
                  final url = "https://www.linkedin.com/in/pratiksha-shinde-pss/";
                  if(await canLaunch(url)) {
                    await launch(url);
                  }
                },
              ),
              SizedBox(width: 20.0,),
              SignInButton(
                Buttons.GitHub,
                mini: true,
                elevation: 10.0,
                onPressed: () async {
                  final url = "https://github.com/Pratiksha2908";
                  if(await canLaunch(url)) {
                    await launch(url);
                  }
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Email: ', style: TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold)),
                  TextSpan(text: 'er.pratikshashinde@gmail.com', style: TextStyle(color: Colors.blue.shade700)),
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Phone: ', style: TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold)),
                    TextSpan(text: '+91 72196 22570', style: TextStyle(color: Colors.blue.shade700)),
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
