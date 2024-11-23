import 'package:flutter/material.dart';
import 'package:hotstar/homePage.dart';

class IntroVideo extends StatefulWidget {
  const IntroVideo({super.key});

  @override
  _IntroVideoState createState() => _IntroVideoState();
}

class _IntroVideoState extends State<IntroVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/loading.mp4')
    ..initialize().then((_) {
      setState(() {});
      _controller.play();
    });
  }  
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
    
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: _controller.value.isInitialized,
      ? FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _controller.value.size.width,
          height: _controller.value.size.height,
          child: ,
        ),
      )
      : HomePage()
    );
  }
}