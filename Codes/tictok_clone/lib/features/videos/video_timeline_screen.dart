import 'package:flutter/material.dart';
import 'package:tictok_clone/features/videos/widgets/video_post.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;

  final PageController _pageController = PageController();

  final Duration _scrollDuration = const Duration(milliseconds: 150);
  final Curve _scrollCurve = Curves.linear;

  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.teal,
  ];

  void _onPageChange(int page) {
    _pageController.animateToPage(
      page,
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;
      colors.addAll(
        [
          Colors.blue,
          Colors.red,
          Colors.yellow,
          Colors.teal,
        ],
      );

      setState(() {});
    }
  }

  void _onVideoFinsihed() {
    _pageController.nextPage(
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      onPageChanged: _onPageChange,
      itemCount: _itemCount,
      itemBuilder: (context, index) =>
          VideoPost(onVideoFinished: _onVideoFinsihed),
    );
  }
}
