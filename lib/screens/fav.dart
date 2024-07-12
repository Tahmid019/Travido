import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:travel/screens/vid.dart';

import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:convert';

// Future<List<String>> loadAssetVideos() async {
//     final menifestContent = await rootBundle.loadString('AssetManifest.json');
//     final Map<String, dynamic> manifest = json.decode(menifestContent);
    
//     final videoFiles = manifest.keys
//         .where((String key) => key.startsWith('assets/videos/'))
//         .toList();
//     return videoFiles;
// }


class Favorite extends StatefulWidget{
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  // Future<List<String>>? _videoFilesFuture;
  List<String> videos = [
      'assets/videos/dubai1.mp4',
      'assets/videos/india2.mp4',
      'assets/videos/india1.mp4',
      'assets/videos/paris1.mp4',
      'assets/videos/paris2.mp4',
      'assets/videos/sydney1.mp4',
      'assets/videos/travel1.mp4',
  ];

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _videoFilesFuture = loadAssetVideos();
  //   _videoFilesFuture?.then((value){
  //     setState(() {
  //       videos = value;
  //     });
  //   });
  // }
  

  
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
              Swiper(
                itemBuilder:(BuildContext context, int index) {
                  return VideoContent(
                    src: videos[index],
                  );
                },
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
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