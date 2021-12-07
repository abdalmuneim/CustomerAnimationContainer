import 'package:flutter/material.dart';

class AnimationButtonContainer extends StatefulWidget {
  const AnimationButtonContainer({
    Key? key,
    required this.child,
    required this.childData,
    required this.replaceChild,
    this.replaceChildWith = const Text(''),
  }) : super(key: key);
  final Widget child;
  final dynamic childData;
  final bool replaceChild;
  final Widget replaceChildWith;

  @override
  _AnimationButtonContainerState createState() =>
      _AnimationButtonContainerState();
}

class _AnimationButtonContainerState extends State<AnimationButtonContainer> {
  int size = 4;
  bool replaceChild = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / size,
          child: SingleChildScrollView(
            child: Column(
              children: [
                widget.childData,
              ],
            ),
          ),
        ),
        GestureDetector(
          child: widget.replaceChild
              ? (replaceChild ? widget.child : widget.replaceChildWith)
              : widget.child,
          onTap: () {
            setState(() {
              size == 4
                  ? size = 2
                  : size == 2
                      ? size = 4
                      : null;
              replaceChild = !replaceChild;
            });
            print('size: $size');
            print('replaceChild: $replaceChild');
            print('widget.replaceChild: ${widget.replaceChild}');
          },
        ),
      ],
    );
  }
}
