import 'dart:async';

import 'package:flutter/material.dart';

class AnimationTransition extends StatefulWidget {
  final Widget child;
  final int delay;
  const AnimationTransition({Key? key, required this.child, required this.delay})
      : super(key: key);

  @override
  State<AnimationTransition> createState() => _AnimationTransitionState();
}

class _AnimationTransitionState extends State<AnimationTransition>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    final curve =
        CurvedAnimation(parent: _controller, curve: Curves.decelerate);

    _animation = Tween<Offset>(begin: const Offset(-0.5, 0.0), end: Offset.zero)
        .animate(curve);

    Timer(Duration(milliseconds: widget.delay), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _controller,
    child: SlideTransition(
      position: _animation,
      child: widget.child),);
  }
}
