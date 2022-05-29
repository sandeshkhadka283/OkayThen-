import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtubevideo extends StatelessWidget {
  const Youtubevideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static List<String> myVideoId = [
    "cjymdaEC3cg",
    "XeF9cMiGrdw",
    "iAb8ctIkYvs",
    "ldwKRvW-E9E",
    "4R5ldEQTcmE",
  ];
  // the full url: https://www.youtube.com/watch?v=PQSagzssvUQ&ab_channel=NASA
  // it's an interesting video from NASA on Youtube

  // Initiate the Youtube player controller

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId.toString(),
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(54.0),
                  child: YoutubePlayer(
                    width: 400,
                    controller: _controller,
                    liveUIColor: Color.fromARGB(255, 180, 148, 53),
                  ),
                ),
              ],
            ));
          },
          itemCount: myVideoId.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
