import 'package:flutter/material.dart';


class Favorite extends StatefulWidget{
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  // final PageController _pageController = PageController();
  // late VideoPlayerController _controller;
  // late ChewieController _chewieController;
//   late VideoPlayerController VideoPlayerController.network(
//   String dataSource, {
//   VideoFormat? formatHint,
//   Future<ClosedCaptionFile>? closedCaptionFile,
//   VideoPlayerOptions? videoPlayerOptions,
//   Map<String, String> httpHeaders = const <String, String>{},
// })
  // late Future<void> _initializeVideoPlayerFuture;

  // @override
  // void dispose(){
  //   _pageController.dispose();
  //   super.dispose();
  // }

  // @override
  // void initState() async{
  //   _controller = VideoPlayerController.asset(
  //     'assets/videos/dvbnhi1.mp4'
  //   );
  //   _chewieController = ChewieController(
  //     videoPlayerController: _controller,
  //     autoPlay: true,
  //     looping: true,
  //   );
    
  //   // _initializeVideoPlayerFuture = _controller.initialize();
  //   // _controller.setLooping(true);
  //   // _controller.setVolume(1.0);
  //   super.initState();
  //   // initializePlayer();
  // }

  // Future initializePlayer() async {
  //   _controller  = VideoPlayerController.asset('assets/videos/dvbnhi1.mp4');
  //   await _controller.initialize();
  //   _chewieController = ChewieController(
  //     videoPlayerController: _controller,
  //     autoPlay: true,
  //     looping: true,
  //   );
  //   setState(() {});
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   _chewieController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Travel',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.camera),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  

}