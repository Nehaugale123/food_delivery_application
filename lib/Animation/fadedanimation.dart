// import 'package:flutter/material.dart';
// import 'package:simple_animations/simple_animations.dart';

// class Fadedanimation extends StatelessWidget {

//   final double delay;
//   final double child;
//   Fadedanimation(this.delay,this.child);

//   @override
//   Widget build(BuildContext context) {
//    final tween = MultiTrackTween([
//       Track('opacity').add(Duration(milliseconds: 500), 
//         Tween(begin: 0.0, end: 1.0)
//       ),
//       Track('translateX').add(Duration(milliseconds: 500), 
//         Tween(begin: 120.0, end: 0.0),
//         curve: Curves.easeOut
//       )
//     ]);
//     return Container();
//   }
// }