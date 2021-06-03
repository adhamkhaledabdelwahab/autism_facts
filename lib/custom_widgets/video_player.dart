import 'package:autism_facts/custom_widgets/basic_overlay_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({Key? key, required this.controller}) : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return controller != null && controller.value.isInitialized ?
        buildVideo()
        :Container(
          child: Center(
              child: CircularProgressIndicator(),
          )
      );
  }

  Widget buildVideo() => Stack(
    children: [
      buildVideoPlayer(),
      Positioned.fill(child: BasicOverlayWidget(controller: controller))
    ],
  );
  Widget buildVideoPlayer() => AspectRatio(
    aspectRatio: controller.value.aspectRatio,
    child: VideoPlayer(controller,),
  );
}
