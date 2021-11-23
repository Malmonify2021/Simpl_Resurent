import 'package:flutter/material.dart';
import 'package:online_library/Screen/Pagetwo.dart';
import 'package:online_library/Screen/bookpage.dart';
import 'package:provider/provider.dart';
import 'package:online_library/Classes/detailes.dart';
import 'package:online_library/Screen/catPage.dart';
import 'Screen/booklist.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        curve: Curves.easeInCirc,
        //splashIconSize: 30,
        backgroundColor: Colors.black87,
        splash: Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
               Expanded(child: Icon(Icons.book_rounded,color: Colors.white,size: 45,)),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Text(
                    'Online Library',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
        nextScreen: MyHomePage(),
        duration: 2000,
        splashTransition: SplashTransition.rotationTransition,
       // pageTransitionType: PageTransitionType ,
      ),
      routes: {
        'Pagetwo': (context) => Pagetwo(),
        'Bookpage': (context) => Bookpage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        // leading: Image.asset('images/develper_64.png'),
        title: Text('Programming Library'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
            iconSize: 25,
          )
        ],
      ),
      body: Column(
        children: [catPage(), booklist()],
      ),
    );
  }
}
