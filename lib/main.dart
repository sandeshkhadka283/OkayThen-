import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:okaythen05/List.dart';
import 'package:okaythen05/detail.dart';
import 'package:okaythen05/message.dart';
import 'package:okaythen05/payment.dart';
import 'package:okaythen05/youtube.dart';
import 'LandingPage.dart';
import 'package:flutter/services.dart';
import 'chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 235, 235, 235),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homescreen(),
        '/second': (context) => const LandingPage(),
        '/third': (context) => const Detail(),
        '/fourth': (context) => const Payment(),
        '/fifth': (context) => const Chat(),
        '/sixth': (context) => const Message(),
        '/seventh': (context) => const Listdata(),
        '/eight': (context) => const Youtubevideo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 29)),
            Center(
              child: SvgPicture.asset(
                'assets/images/Ls.svg',
                height: 140,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SvgPicture.asset(
                'assets/images/As.svg',
                height: 250,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Capture & Create",
              style:
                  TextStyle(color: Color.fromARGB(255, 7, 0, 0), fontSize: 25),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "VideoEditor and Photographer with 2 years’contributions in developing productions.",
                style: TextStyle(
                    color: Color.fromARGB(255, 24, 1, 1), fontSize: 10),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              child: const Text('Get Started'),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 10, 5, 5),
                onPrimary: const Color.fromARGB(255, 255, 255, 255),
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
                elevation: 4,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            )
          ]),
        ),
      ),
    );
  }
}
