import 'package:flutter/material.dart';

class MyRotationAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const MyRotationAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(seconds:40), // مدت زمان یک چرخش
  });

  @override
  State<MyRotationAnimation> createState() => _MyRotationAnimationState();
}

class _MyRotationAnimationState extends State<MyRotationAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat(); // تکرار بی‌نهایت

    // اگر بخوای چرخش نرم‌تر باشه می‌تونی curve هم اضافه کنی، ولی animationController خودش linearه
  }

  @override
  void dispose() {
    _controller.dispose(); // پاک‌سازی حافظه
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller, // مقدار چرخش از 0 تا 1، به صورت مداوم
      child: widget.child,
    );
  }
}
