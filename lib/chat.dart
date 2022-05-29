import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //--------ARROW KEY and Description Box-------------------------------------------------------------------
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
                Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      children: const [
                        Text(
                          'Chat',
                          style: TextStyle(
                              color: Color.fromARGB(255, 109, 104, 104),
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.camera,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 20.0,
                ),
              ],
            ),
          ),

          //-----------------------RECENT Messages section-------------------------------------------
          Expanded(
            child: Container(
              child: Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Recent Messages',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.black,
                    height: 10,
                    thickness: 0.4,
                    indent: 0,
                    endIndent: 0,
                  ),

                  //--------Personal message section------------------------------------------------------
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/sixth');
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 254, 255),
                                  radius: 20,
                                  child: ClipRRect(
                                    child: Image.asset(
                                        'assets/images/Sandesh.PNG'),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text(
                                      'Aankaa',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Crn ko photo aayo ki nai ',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 148, 121, 121),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 170.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.green,
                                      size: 10.0,
                                    ),
                                    Text(
                                      '9:30 ',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 0.4,
                        indent: 0,
                        endIndent: 0,
                      ),

                      //---------------Second message section-----------------------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 254, 255),
                              radius: 20,
                              child: ClipRRect(
                                child: Image.asset('assets/images/sagar.PNG'),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  'Arun Poudel',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Dhoka ko vitra k ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 148, 121, 121),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 255, 1, 1),
                                  size: 10.0,
                                ),
                                Text(
                                  '9:30 ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 0.4,
                        indent: 0,
                        endIndent: 0,
                      ),

                      //------third section message---------------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 254, 255),
                              radius: 30,
                              child: Icon(
                                Icons.people,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 25.0,
                              ),
                            ),
                          ), //CircleAvata
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  'Shree',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Khana Khanuvo ki nai ani ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 148, 121, 121),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 255, 1, 1),
                                  size: 10.0,
                                ),
                                Text(
                                  '9:30 ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 0.4,
                        indent: 0,
                        endIndent: 0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 254, 255),
                              radius: 30,
                              child: Icon(
                                Icons.people,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 25.0,
                              ),
                            ),
                          ), //CircleAvata
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  'Love Life',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Hey ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 148, 121, 121),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 255, 1, 1),
                                  size: 10.0,
                                ),
                                Text(
                                  '9:30 ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 0.4,
                        indent: 0,
                        endIndent: 0,
                      ),

                      //---------------Second message section-----------------------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 254, 255),
                              radius: 30,
                              child: Icon(
                                Icons.people,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 25.0,
                              ),
                            ),
                          ), //CircleAvata
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  'Guntu Myan',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Oooo baby ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 148, 121, 121),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 255, 1, 1),
                                  size: 10.0,
                                ),
                                Text(
                                  '9:30 ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 0.4,
                        indent: 0,
                        endIndent: 0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 254, 255),
                              radius: 30,
                              child: Icon(
                                Icons.people,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 25.0,
                              ),
                            ),
                          ), //CircleAvata
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  'Bhunta Man',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'I love you  ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 148, 121, 121),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 255, 1, 1),
                                  size: 10.0,
                                ),
                                Text(
                                  '9:30 ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              width: 400,
              height: 620,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 224, 241),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
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
          ),

          //----------------------LIST SECTION--------------------------------------------------------------------

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 255, 254, 255),
                  radius: 30,
                  child: Icon(
                    Icons.people,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 25.0,
                  ),
                ),
              ), //CircleAvata
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Bhunta Man',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'I love you  ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 148, 121, 121),
                          fontSize: 8,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 255, 1, 1),
                      size: 10.0,
                    ),
                    Text(
                      '9:30 ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
