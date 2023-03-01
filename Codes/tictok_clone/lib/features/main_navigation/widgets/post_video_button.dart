import 'package:flutter/material.dart';

class PostVideoButton extends StatefulWidget {
  const PostVideoButton({
    super.key,
    required this.isHover,
  });

  final bool isHover;

  @override
  State<PostVideoButton> createState() => _PostVideoButtonState();
}

class _PostVideoButtonState extends State<PostVideoButton>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: 1.0,
      end: 1.2,
    ).animate(_controller!);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Transform.scale(
    //   scale: widget.isHover ? 1.2 : 1,
    //   child: AnimatedContainer(
    //     duration: const Duration(milliseconds: 300),
    //     child: Stack(
    //       clipBehavior: Clip.none,
    //       children: [
    //         Positioned(
    //           right: 20,
    //           child: Container(
    //             height: 30,
    //             width: 25,
    //             padding: const EdgeInsets.symmetric(
    //               horizontal: Sizes.size8,
    //             ),
    //             decoration: BoxDecoration(
    //               color: const Color(0xFF61D4F0),
    //               borderRadius: BorderRadius.circular(
    //                 Sizes.size8,
    //               ),
    //             ),
    //           ),
    //         ),
    //         Positioned(
    //           left: 20,
    //           child: Container(
    //             height: 30,
    //             width: 25,
    //             padding: const EdgeInsets.symmetric(
    //               horizontal: Sizes.size8,
    //             ),
    //             decoration: BoxDecoration(
    //               color: Theme.of(context).primaryColor,
    //               borderRadius: BorderRadius.circular(
    //                 Sizes.size8,
    //               ),
    //             ),
    //           ),
    //         ),
    //         Container(
    //           height: 30,
    //           padding: const EdgeInsets.symmetric(
    //             horizontal: Sizes.size12,
    //           ),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.circular(
    //               Sizes.size6,
    //             ),
    //           ),
    //           child: const Center(
    //             child: FaIcon(
    //               FontAwesomeIcons.plus,
    //               color: Colors.black,
    //               size: Sizes.size16 + Sizes.size2,
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
    return Center(
      child: AnimatedBuilder(
        animation: _animation!,
        builder: (context, child) {
          return Transform.scale(
            scale: _animation?.value,
            child: child,
          );
        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ),
    );
  }
}
