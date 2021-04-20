import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer1 extends StatefulWidget {
  VideoPlayer1({Key key}) : super(key: key);

  @override
  _VideoPlayer1State createState() => _VideoPlayer1State();
}

class _VideoPlayer1State extends State<VideoPlayer1> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/ABDOMINAL-CRUNCSHE.MP4");
    _controller.play();
    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the VideoPlayerController has finished initialization, use
          // the data it provides to limit the aspect ratio of the video.
          return VideoPlayer(_controller);
        } else {
          // If the VideoPlayerController is still initializing, show a
          // loading spinner.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class VideoPlayer2 extends StatefulWidget {
  VideoPlayer2({Key key}) : super(key: key);

  @override
  _VideoPlayer2State createState() => _VideoPlayer2State();
}

class _VideoPlayer2State extends State<VideoPlayer2> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/SET-UPS.MP4");
    _controller.play();
    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the VideoPlayerController has finished initialization, use
          // the data it provides to limit the aspect ratio of the video.
          return VideoPlayer(_controller);
        } else {
          // If the VideoPlayerController is still initializing, show a
          // loading spinner.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class VideoPlayer3 extends StatefulWidget {
  VideoPlayer3({Key key}) : super(key: key);

  @override
  _VideoPlayer3State createState() => _VideoPlayer3State();
}

class _VideoPlayer3State extends State<VideoPlayer3> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/LEG-RAISES.MP4");
    _controller.play();
    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the VideoPlayerController has finished initialization, use
          // the data it provides to limit the aspect ratio of the video.
          return VideoPlayer(_controller);
        } else {
          // If the VideoPlayerController is still initializing, show a
          // loading spinner.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class VideoPlayer4 extends StatefulWidget {
  VideoPlayer4({Key key}) : super(key: key);

  @override
  _VideoPlayer4State createState() => _VideoPlayer4State();
}

class _VideoPlayer4State extends State<VideoPlayer4> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/SUPERMAN.MP4");
    _controller.play();
    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the VideoPlayerController has finished initialization, use
          // the data it provides to limit the aspect ratio of the video.
          return VideoPlayer(_controller);
        } else {
          // If the VideoPlayerController is still initializing, show a
          // loading spinner.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
