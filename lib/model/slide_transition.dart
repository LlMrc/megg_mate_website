import 'package:flutter/material.dart';

class Transition extends StatefulWidget {
  const Transition({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  State<Transition> createState() => _TransitionState();
}

class _TransitionState extends State<Transition>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child:  widget.child,
    );
  }
}
