import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'homePage.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _Intro createState() => _Intro();
}

class _Intro extends State<Intro> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();

  // tween = Tween<double>(begin: 0.5, end: 1).animate(_controller);
  // _controller.forward();

  double targetValue = 200.0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: GestureDetector(
            child: AnimatedBuilder(
              animation: _controller,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image(
                  image: NetworkImage(
                    'https://static.thenounproject.com/png/92888-200.png',
                  ),
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.scale(
                  scale: 0.5 + math.pow(_controller.value, 2) * 0.3,
                  child: child,
                );
              },
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            }),
      ),
    );
  }
}
