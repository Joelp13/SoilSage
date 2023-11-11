import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/tomato_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTube extends StatefulWidget {
  const YouTube({super.key});

  @override
  State<YouTube> createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {
  final videoUrl =
      "https://www.youtube.com/watch?v=fIjDdOFdYBI&ab_channel=ProjectDiaries";
  // ignore: prefer_typing_uninitialized_variables
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: IconButton(
                  color: Color(0xff4c505b),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context as BuildContext,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TomatoScreen()));
                  },
                  icon: Icon(Icons.arrow_back),
                  iconSize: 20,
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: IconButton(
                  color: Color(0xff4c505b),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context as BuildContext,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TomatoScreen()));
                  },
                  icon: Icon(Icons.heart_broken_rounded),
                  iconSize: 20,
                ),
              )
            ],
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          )
        ],
      ),
    );
  }
}
