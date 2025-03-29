import 'package:flutter/material.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';

class CustomDashedProgress extends StatelessWidget {
  final double progress;

  const CustomDashedProgress({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> valueNotifier = ValueNotifier(progress);

    return DashedCircularProgressBar.aspectRatio(
      aspectRatio: 1,
      valueNotifier: valueNotifier,
      progress: progress,
      maxProgress: 80,
      corners: StrokeCap.butt,
      foregroundColor: const Color(0xFFFFC700),
      backgroundColor: const Color(0xFFFFFFFF),
      foregroundStrokeWidth: 10,
      backgroundStrokeWidth: 10,
      animation: true,
    );
  }
}
