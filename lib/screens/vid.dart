import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:travel/widgets/like_option.dart';
import 'package:travel/widgets/options.dart';
import 'package:video_player/video_player.dart';


class VideoContent extends StatefulWidget {
  @override
  _VideoContentState createState() => _VideoContentState();
}

class _VideoContentState extends State<VideoContent> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;
  bool _liked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializePlayer();
    
  }

  Future initializePlayer() async {
    _controller = VideoPlayerController.asset('assets/videos/dvbnhi1.mp4');
    await Future.wait([_controller.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      showControls: false,
      looping: true,
    );
    setState(() {
      
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController!=null&&_chewieController.videoPlayerController.value.isInitialized?
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              _liked = !_liked;
            });
          },
          child: Chewie(controller: _chewieController!,),
        )
        : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 10,),
            Text("Loading..."),
          ],
        ),
        if(_liked)
          Center(
            child: LikeIcon(),
          ),
        OptionScreen()
      ],

    );
  }
}