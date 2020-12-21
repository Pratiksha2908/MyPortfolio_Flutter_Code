import 'package:flutter/material.dart';
import 'package:portfolio/tabs/home.dart' as first;
import 'package:portfolio/tabs/about.dart' as second;
import 'package:portfolio/tabs/resume.dart' as third;
import 'package:portfolio/tabs/projects.dart' as fourth;
import 'package:portfolio/tabs/contact.dart' as last;
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(600, name: MOBILE),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            width: 20.0,
            child: SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 8.0,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),
                        elevation: 15.0,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                          child: Text(
                            'DEV',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "MontserratAlternates-Bold",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.blue.shade900,
                        tabs: <Widget>[
                          Container(
                              width: 50,
                              alignment: Alignment.center,
                              child: Text("Home", style: TextStyle(fontSize: 13.5),)),
                          Container(
                              width: 50,
                              alignment: Alignment.center,
                              child: Text("About", style: TextStyle(fontSize: 13.5),)),
                          Container(
                              width: 50,
                              alignment: Alignment.center,
                              child: Text("Resume", style: TextStyle(fontSize: 13.5),)),
                          Container(
                              width: 60,
                              alignment: Alignment.center,
                              child: Text("Projects", style: TextStyle(fontSize: 13.5),)),
                          Container(
                              width: 70,
                              alignment: Alignment.center,
                              child: Text("CONTACT", style: TextStyle(fontSize: 13.5),))
                        ],
                        controller: _tabController,
                        indicatorColor: Colors.blue.shade900,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            first.HomeScreen(),
            second.AboutScreen(),
            third.ResumeScreen(),
            fourth.ProjectsScreen(),
            last.Contact(),
          ],
          controller: _tabController,
        ),
    );
  }
}
