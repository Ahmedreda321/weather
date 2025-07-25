import 'package:flutter/material.dart';

// Define a reusable SlideTransition widget
class SlideTransitionPage extends PageRouteBuilder {
  final Widget page;
  @override
  // ignore: overridden_fields
  final Duration transitionDuration;

  SlideTransitionPage({
    required this.page,
    this.transitionDuration = const Duration(milliseconds: 700),
  }) : super(
          transitionDuration: transitionDuration,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
}
