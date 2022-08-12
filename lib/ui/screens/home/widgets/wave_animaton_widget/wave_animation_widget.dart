import 'package:arts_beaty/ui/screens/home/widgets/wave_animaton_widget/custom_clip_path.dart';
import 'package:flutter/material.dart';

class WaveAnimationWidget extends StatefulWidget {
  const WaveAnimationWidget({Key? key}) : super(key: key);

  @override
  State<WaveAnimationWidget> createState() => _WaveAnimationWidgetState();
}

class _WaveAnimationWidgetState extends State<WaveAnimationWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();

    animation = Tween<double>(begin: -500, end: 0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomClipPath(animation);
  }
}
