import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 220, 245),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
            //------------Main app BAr like section--------------------------------------------------------------------------
            Container(
              width: 650,
              height: 305,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 1, // blur radius
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Text(
                          'Hey Stranger',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 35,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: ElevatedButton(
                            child: const Icon(
                              Icons.notifications,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 20.0,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/seventh');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 0, 0, 0),
                              onPrimary: const Color.fromARGB(255, 0, 0, 0),
                              shadowColor: const Color.fromARGB(255, 0, 0, 0),
                              elevation: 4,
                              fixedSize: const Size(20, 20),
                              shape: const CircleBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //------------------Big Box Section--------------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/fifth');
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Click ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 194, 85, 152),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  'Chat Section',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 165, 139, 139),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Ls.svg',
                                  height: 90,
                                ),
                              ],
                            ),
                          ],
                        ),
                        width: 350,
                        height: 167,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), // Ink

            const SizedBox(
              height: 6,
            ),
            //------------------Hire Section Starts------Text Section  COLUMN ALL INSIDE--------------------------------------------------------
            Container(
              width: 500,
              height: 210,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 1, // blur radius
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          "Hire",
                          style: TextStyle(
                              color: Color.fromARGB(255, 7, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),

                  //----------------------hire section ,three sections list----------------------------------------------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/third');
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                //-----------VIDEOGRAPHY SECTION BELOW---------------------------------------------------
                                children: [
                                  Center(
                                    child: SvgPicture.asset(
                                      'assets/images/mic.svg',
                                      color: Color.fromARGB(255, 201, 103, 135),
                                      height: 40,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Text(
                                      "Videography",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 7, 0, 0),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "Rs.1000",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 7, 0, 0),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          width: 90,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.3), //color of shadow
                                spreadRadius: 5, //spread radius
                                blurRadius: 7, // blur radius
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ),
                      //-----------PHOTOGRAPHY SECTION INCLUDED BELOW------------------------------------------------
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: SvgPicture.asset(
                                    'assets/images/Photo.svg',
                                    color: Color.fromARGB(255, 201, 103, 135),
                                    height: 40,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Text(
                                    "Photography",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 7, 0, 0),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Rs2500",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                        width: 90,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      //---------------BOTH SECTION VIDEO PHOTO INCluded------------------------------------
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                                  child: SvgPicture.asset(
                                      'assets/images/music.svg',
                                      color: const Color.fromARGB(
                                          255, 201, 103, 135),
                                      height: 40),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Text(
                                    "Videography",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 7, 0, 0),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Rs.1000",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                        width: 90,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //---------------Small icons Section Create section,icons-----------------------------------------------------------------
            const SizedBox(
              height: 6,
            ),
            //---------------Small icons Section Create section,icons-----------------------------
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          "Create",
                          style: TextStyle(
                              color: Color.fromARGB(255, 7, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            SizedBox(
                              height: 8,
                            ),
                            Icon(
                              Icons.music_note,
                              color: Color.fromARGB(255, 201, 103, 135),
                              size: 20.0,
                            ),
                            SizedBox(
                              height: 0.1,
                            ),
                            Text(
                              "Music",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            SizedBox(
                              height: 8,
                            ),
                            Icon(
                              Icons.people,
                              color: Color.fromARGB(255, 201, 103, 135),
                              size: 20.0,
                            ),
                            SizedBox(
                              height: 0.1,
                            ),
                            Text(
                              "Pros",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            SizedBox(
                              height: 8,
                            ),
                            Icon(
                              Icons.mic,
                              color: Color.fromARGB(255, 201, 103, 135),
                              size: 20.0,
                            ),
                            SizedBox(
                              height: 0.1,
                            ),
                            Text(
                              "Mic",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            SizedBox(
                              height: 8,
                            ),
                            Icon(
                              Icons.video_camera_back,
                              color: Color.fromARGB(255, 201, 103, 135),
                              size: 20.0,
                            ),
                            SizedBox(
                              height: 0.1,
                            ),
                            Text(
                              "Video",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //-------Lower navbar buttons section------------------------------------------------------
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
              height: 78,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 230, 238),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 1, // blur radius
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
            ),

            Text('sandesh'),
          ]),
        ),
      ),
    );
  }
}
