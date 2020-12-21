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
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'FoodRun Flutter App',
                                style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  height: 300.0,
                                  width: 150.0,
                                  child: Image.asset('images/project4.jpg',),
                                ),
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/FoodRun";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              InkWell(
                                child: Text('Know more', style: TextStyle(color: Colors.deepOrange, decoration: TextDecoration.underline),),
                                onTap: (){
                                  showDialog(context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          title: "FoodRun Flutter App",
                                          descriptions: "The vision of this app is to \"Serve food to neighbors and get paid from them.\" Food Run help you to earn money by delivering food to the neighbors. It offers neighbors to request food from the restaurant you are going to visit.",
                                          text: "Cancel",
                                          ok: "Peek into Code",
                                        );
                                      }
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Restaurant Kotlin App',
                                style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  height: 300.0,
                                  width: 150.0,
                                  child: Image.asset('images/project5.jpg',),
                                ),
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/FoodHub-Restaurant-App";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              InkWell(
                                child: Text('Know more', style: TextStyle(color: Colors.deepOrange, decoration: TextDecoration.underline),),
                                onTap: (){
                                  showDialog(context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          title: "Restaurant Kotlin App",
                                          descriptions: "Restaurant App made by kotlin. In this app we need to register before entering the restaurant's page. This app has a list of many restaurants showing the reviews on the right side of each. By clicking one of the restaurants we get the menu items with its price. we can add those menu items to cart and also we can remove if we wanted so. And then finally we can buy the food items from the cart.",
                                          text: "Cancel",
                                          ok: "Peek into Code",
                                        );
                                      }
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('SocialNetworking Flutter App UI Design',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  height: 300.0,
                                  width: 150.0,
                                  child: Image.asset('images/project1.jpg',),
                                ),
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/SocialNetworking_Flutter_App";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              InkWell(
                                child: Text('Know more', style: TextStyle(color: Colors.deepOrange, decoration: TextDecoration.underline),),
                                onTap: (){
                                  showDialog(context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          title: "SocialNetworking Flutter App UI Design",
                                          descriptions: "FriendCircle is the concept of a social networking app that will help users get connected to the world. This app is a UI design made using Flutter. This UI app is a cross-platform application.",
                                          text: "Cancel",
                                          ok: "Peek into Code",
                                        );
                                      }
                                  );
                                },
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
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Eat Safe Flutter App',
                                style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  height: 300.0,
                                  width: 150.0,
                                  child: Image.asset('images/project6.jpg',),
                                ),
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/Eat_Safe";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              InkWell(
                                child: Text('Know more', style: TextStyle(color: Colors.deepOrange, decoration: TextDecoration.underline),),
                                onTap: (){
                                  showDialog(context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          title: "Eat Safe Flutter App",
                                          descriptions: "EatSafe is an application that helps people, especially pregnant women to distinguish the food which is safe or unsafe for their health and child. EatSafe allows you to search for food items that you are gonna eat and then will show results whether it's safe or not. EatSafe comes with a simple and user-friendly UI design made using flutter and is a cross-platform application.",
                                          text: "Cancel",
                                          ok: "Peek into Code",
                                        );
                                      }
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        child: Card(
                          elevation: 12.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Image Text Reading Flutter App',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  height: 300.0,
                                  width: 150.0,
                                  child: Image.asset('images/project7.jpg',),
                                ),
                                onTap: () async {
                                  final url = "https://github.com/Pratiksha2908/Image-to-PDF-Flutter";
                                  if(await canLaunch(url)) {
                                    await launch(url);
                                  }
                                },
                              ),
                              InkWell(
                                child: Text('Know more', style: TextStyle(color: Colors.deepOrange, decoration: TextDecoration.underline),),
                                onTap: (){
                                  showDialog(context: context,
                                      builder: (BuildContext context){
                                        return CustomDialogBox(
                                          title: "Image Text Reading Flutter App",
                                          descriptions: "I created this Image-Text-Reading Application by using Flutter and ML vision kit (OCR). Application that extracts text from an image which can further be downloaded and shared as pdf. This App works on all Android devices as well as IOS devices.",
                                          text: "Cancel",
                                          ok: "Peek into Code",
                                        );
                                      }
                                  );
                                },
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
