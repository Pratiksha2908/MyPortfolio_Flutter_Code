import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../custom_dialog_box.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                                  child: Text(
                                    'Calculator Angular App',
                                    style: TextStyle(
                                        color: Colors.blue.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/Angular-Calculator";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          text: 'Cancel',
                                          title: 'Calculator Angular App',
                                          ok: 'Peek into Code',
                                          descriptions: 'This is a basic calculator application made using Angular. This calculator App allows people to do math operations like addition, subtraction, multiplication and division more easily.',
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                                  child: Text(
                                    'Post Comments Mean Stack App',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/mean-stack";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          text: 'Cancel',
                                          title: 'Post Comments Mean Stack App',
                                          ok: 'Peek into Code',
                                          descriptions: 'This is a small Mean Stack Application used to post comments. We used Mongo as a database to store posts.',
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                                  child: Text(
                                    'My Portfolio using Flutter',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/pratiksha-portfolio";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          text: 'Cancel',
                                          title: 'My Portfolio using Flutter',
                                          ok: 'Peek into Code',
                                          descriptions: 'This is my official Portfolio Website made using Flutter.',
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                                  child: Text(
                                    'Demo Portfolio using HTML, CSS and JS',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/portfolio_html";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          text: 'Cancel',
                                          title: 'Demo Portfolio using HTML, CSS and JS',
                                          ok: 'Peek into Code',
                                          descriptions: 'This is demo Portfolio Website made using HTML, CSS and Javascript.',
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                                  child: Text(
                                    'Image Text Recognition App using Flutter',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/Image-Text_Recognition_Flutter";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          text: 'Cancel',
                                          title: 'Image Text Recognition App using Flutter',
                                          ok: 'Peek into Code',
                                          descriptions: 'This is a Image-text-recognition Application made using Flutter and ML vision Kit (OCR). Application that extracts text from an image which can further be downloaded and stored as pdf. This App works on all Android devices as well as IOS devices.',
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                                  child: Text(
                                    'SocialNetworking App UI using Flutter',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/SocialNetworking_Flutter_App_UI_Design";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return CustomDialogBox(
                                        text: 'Cancel',
                                        title: 'SocialNetworking App UI using Flutter',
                                        ok: 'Peek into Code',
                                        descriptions: 'FriendCircle is the concept of a social networking app that will help users get connected to the world. This app is a UI design made using Flutter. This UI app is cross-platform application.',
                                      );
                                    }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                                  child: Text(
                                    'FoodRun App using Flutter',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/FoodRun";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          text: 'Cancel',
                                          title: 'FoodRun App using Flutter',
                                          ok: 'Peek into Code',
                                          descriptions: 'The vision of this app is to "Serve food to neighbors and get paid from them." FoodRun help you to earn money by delivering food to neighbors. It offers neighbors to request food from the restaurant you are going to visit.',
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                                  child: Text(
                                    'FoodHub Restaurant App using Kotlin',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/FoodHub-Restaurant-App";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          text: 'Cancel',
                                          title: 'FoodHub Restaurant App using Kotlin',
                                          ok: 'Peek into Code',
                                          descriptions: 'My first app a Restaurant App. I created this app using #androidstudio and the language #kotlin. We need to register for the app before entering the restaurant\'s page. This app has a list of many restaurants showing the reviews on the right side of each. By clicking one of the restaurants we get the menu items with its price. we can add those menu items to cart and also we can remove if we wanted so. And then finally we can buy the food items from the cart.',
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                      Container(
                        height: 180.0,
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                                  child: Text(
                                    'EatSafe App using Flutter',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                hoverColor: Colors.white,
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/Eat_Safe";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              MaterialButton(
                                hoverColor: Colors.white,
                                focusColor: Colors.white,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          text: 'Cancel',
                                          title: 'EatSafe App using Flutter',
                                          ok: 'Peek into Code',
                                          descriptions: 'EatSafe is a application that helps people, especially pregnant women to distinguish the food which is safe or unsafe for their health and child. EatSafe allows you to search for food items that you are gonna eat and then will show results whether it\s safe or not. EatSafe comes with simple and user-friendly UI design made using Flutter and is cross-platform application.',
                                        );
                                      }
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 35.0,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: LinearGradient(
                                        colors: [Colors.red, Colors.pink,],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      )
                                  ),
                                  child: Center(
                                      child: Text('Know more',
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
