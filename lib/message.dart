import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  TextEditingController nameController = TextEditingController();

  get passwordController => null;
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            child: const Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(255, 0, 0, 0),
                              size: 15.0,
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
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Aankaa',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 109, 104, 104),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.green,
                                            size: 8.0,
                                          ),
                                          Text(
                                            'Online',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.call,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),

                    //---Main message section----------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 255, 254, 255),
                            radius: 20,
                            child: ClipRRect(
                              child: Image.asset('assets/images/Sandesh.PNG'),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        //-------------Text main message section------------------------- //CircleAvata
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Can you pass that link ?',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text(
                                        '9:30 ',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Icon(
                                        Icons.done_all_rounded,
                                        color: Color.fromARGB(255, 255, 1, 1),
                                        size: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width: 210,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 189, 188, 189),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    4, 4), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //----Owner message message AAAAAA-----------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'Yeah Sure. ',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                            width: 210,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 196, 232),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: const Offset(
                                      4, 4), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    //---Main message section----------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 255, 254, 255),
                            radius: 20,
                            child: ClipRRect(
                              child: Image.asset('assets/images/Sandesh.PNG'),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        //-------------Text main message section------------------------- //CircleAvata
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Pretty Fast hmm. ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text(
                                        '9:30 ',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w200),
                                      ),
                                      Icon(
                                        Icons.done_all_rounded,
                                        color: Color.fromARGB(255, 255, 1, 1),
                                        size: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width: 210,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 189, 188, 189),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    4, 4), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //----Owner message message AAAAAA-----------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'No it was mess ',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                            width: 210,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 196, 232),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: const Offset(
                                      4, 4), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    //---Main message section----------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 255, 254, 255),
                            radius: 20,
                            child: ClipRRect(
                              child: Image.asset('assets/images/Sandesh.PNG'),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        //-------------Text main message section------------------------- //CircleAvata
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Is it done? ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text(
                                        '9:30 ',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w200),
                                      ),
                                      Icon(
                                        Icons.done_all_rounded,
                                        color: Color.fromARGB(255, 255, 1, 1),
                                        size: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width: 210,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 189, 188, 189),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    4, 4), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //----Owner message message AAAAAA-----------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'Processing ',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                            width: 210,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 196, 232),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: const Offset(
                                      4, 4), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    //---Main message section----------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 255, 254, 255),
                            radius: 20,
                            child: ClipRRect(
                              child: Image.asset('assets/images/Sandesh.PNG'),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        //-------------Text main message section------------------------- //CircleAvata
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'When will it be ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text(
                                        '9:30 ',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w200),
                                      ),
                                      Icon(
                                        Icons.done_all_rounded,
                                        color: Color.fromARGB(255, 255, 1, 1),
                                        size: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width: 210,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 189, 188, 189),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.2), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    4, 4), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //----Owner message message AAAAAA-----------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'Come here ',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                            width: 210,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 196, 232),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: const Offset(
                                      4, 4), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: TextField(
                            controller: nameController,
                            obscureText: false,
                            decoration: const InputDecoration(
                              fillColor: Colors.blueGrey,
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 185, 179, 185))),
                              hintText: 'Send a message',
                            ),
                          ),
                        ),
                        width: 500,
                        height: 94,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 196, 232),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.2), //color of shadow
                              spreadRadius: 2, //spread radius
                              blurRadius: 4, // blur radius
                              offset: const Offset(
                                  4, 4), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
