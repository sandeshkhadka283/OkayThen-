// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //--------ARROW KEY and Description Box-------------------------------------------------------------------
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
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
                              Text('Description',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 109, 104, 104),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Raleway',
                                  )),
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
                    'assets/images/idea.svg',
                    height: 200,
                    color: Color.fromARGB(255, 68, 61, 66),
                  ),
                ),
                //-----Padding with the Okay Then TITLE and description----------------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '2079-02-09',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                'Samakhusi Branch',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Detailed description of the project',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200),
                              ),
                              SvgPicture.asset(
                                'assets/images/Ls.svg',
                                height: 110,
                              ),
                            ],
                          ),
                          ElevatedButton.icon(
                            label: const Text(
                              'Checkout',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            icon: const Icon(Icons.payment_sharp),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 247, 110, 208),
                                onPrimary: Color.fromARGB(255, 255, 255, 255),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                textStyle: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/fourth');
                            },
                          )
                        ],
                      ),
                    ),
                    width: 350,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 2, // blur radius
                          offset:
                              const Offset(2, 1), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),

                //-------Lower navbar buttons section------------------------------------------------------
                //-------Lower navbar buttons section--------
                //-------Lower navbar buttons section--------
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              fixedSize: const Size(75, 40),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            child: const Icon(
                              Icons.home,
                              color: Color.fromARGB(255, 0, 0, 0),
                              size: 25.0,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 249, 249),
                              onPrimary: Color.fromARGB(255, 0, 0, 0),
                              shadowColor: const Color.fromARGB(255, 0, 0, 0),
                              elevation: 0,
                              fixedSize: const Size(75, 40),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            child: const Icon(
                              Icons.menu,
                              color: Color.fromARGB(255, 0, 0, 0),
                              size: 25.0,
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 249, 249),
                              onPrimary: Color.fromARGB(255, 0, 0, 0),
                              shadowColor: const Color.fromARGB(255, 0, 0, 0),
                              elevation: 0,
                              fixedSize: const Size(75, 40),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  width: 390,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 230, 238),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 1, // blur radius
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
