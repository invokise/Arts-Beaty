import 'package:arts_beaty/app_resources/app_colors.dart';
import 'package:arts_beaty/ui/screens/home/widgets/wave_animaton_widget/bottom_wave_clipper.dart';

import 'package:flutter/material.dart';

class CustomClipPath extends AnimatedWidget {
  final Animation<double> animation;

  const CustomClipPath(this.animation, {Key? key})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            right: animation.value,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: AppColors.waveAnimationColor,
                  width: 1000,
                  height: 50,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: animation.value,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: AppColors.waveAnimationColor,
                  width: 1000,
                  height: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:arts_beaty/ui/screens/home/widgets/bottom_wave_clipper.dart';
// import 'package:flutter/material.dart';

// class MyClipPath extends AnimatedWidget {
//   final Animation<double> animation;

//   const MyClipPath(this.animation, {Key? key})
//       : super(key: key, listenable: animation);

//   final Color backgroundColor = Colors.red;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 50),
//         const Text(
//           'Wave Animation in Flutter',
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 30.0),
//         ),
//         Expanded(
//           child: Stack(children: [
//             Positioned(
//               bottom: 0,
//               right: animation.value,
//               child: ClipPath(
//                 clipper: BottomWaveClipper(),
//                 child: Opacity(
//                   opacity: 0.5,
//                   child: Container(
//                     color: backgroundColor,
//                     width: 1000,
//                     height: 200,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 0,
//               left: animation.value,
//               child: ClipPath(
//                 clipper: BottomWaveClipper(),
//                 child: Opacity(
//                   opacity: 0.5,
//                   child: Container(
//                     color: backgroundColor,
//                     width: 1000,
//                     height: 200,
//                   ),
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ],
//     );
//   }
// }
