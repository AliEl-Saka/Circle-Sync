import 'package:flutter/material.dart';

class PageTransition extends PageRouteBuilder {
  final Widget page;

  PageTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration:
              const Duration(milliseconds: 750), // Adjust duration as needed
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            const begin = Offset(8.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.fastLinearToSlowEaseIn;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}