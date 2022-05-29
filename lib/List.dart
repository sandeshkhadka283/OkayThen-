import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Listdata extends StatelessWidget {
  const Listdata({Key? key}) : super(key: key);

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
                height: 200,
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text('Sita Sharma Wedding'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/eight');
                },
              ),
              width: 380,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Manoj Gc Wedding'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 400,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Sital Kc Wedding'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 400,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Sagar Subedi Wedding'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 400,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Baburam Thapa Wedding'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 400,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            SizedBox(
              child: ElevatedButton(
                child: const Text('Heena Thapa Wedding'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 380,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 400,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 400,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 400,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 150, 150),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 4,
                ),
                onPressed: () {},
              ),
              width: 400,
              height: 100,
            ),
            SizedBox(
              height: 30,
              width: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
