import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../detail/detail.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    super.key,
    required this.video,
    required this.username,
    required this.comments,
    required this.likes,
  });

  final String video;
  final String username;
  final int comments;
  final String likes;

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    initializePlayer();
    super.initState();
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.asset(widget.video);
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      allowMuting: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController != null &&
            _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(
          controller: _chewieController!,
        )
            : SizedBox(),
        SizedBox(
          height: screenHeight * 0.7,
        ),
        infoContainer(
          context: context,
          username: widget.username,
          com: widget.comments,
          likes: widget.likes,
          video: widget.video,
        ),
      ],
    );
  }
}
