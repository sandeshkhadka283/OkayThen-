import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //--------ARROW KEY and Description Box-------------------------------------------------------------------
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 25.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 249, 249),
                        onPrimary: Color.fromARGB(255, 0, 0, 0),
                        shadowColor: const Color.fromARGB(255, 0, 0, 0),
                        elevation: 0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Center(
                        child: Row(
                          children: const [
                            Text(
                              'Payment',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 109, 104, 104),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //----------------Main SVG picture -------------------------------------------------------------------
              Center(
                child: SvgPicture.asset(
                  'assets/images/compballon.svg',
                  height: 200,
                  color: Color.fromARGB(255, 247, 110, 208),
                ),
              ),

              ElevatedButton.icon(
                label: const Text(
                  'Pay',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                icon: const Icon(Icons.payments_rounded),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 0, 0),
                    onPrimary: Color.fromARGB(255, 255, 255, 255),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    textStyle: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
                onPressed: () {},
              ),
            ]),
      ),
    );
  }
}
