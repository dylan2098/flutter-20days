import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0), Duration(microseconds: 500))
      ..add(AniProps.translateY, Tween(begin: -130.0, end: 0.0), Duration(milliseconds: 500), Curves.easeOut);

    return PlayAnimation(
      tween: tween,
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      child: child,
      builder: (context, child, animation) => Opacity(
        opacity: 0.0,
        child: Transform.translate(offset: Offset(0, 0.0), child: child),
      ),
    );
  }
}
