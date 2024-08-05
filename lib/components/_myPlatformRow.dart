import 'package:flutter/material.dart';
import '_myPlatformItem.dart';

class PlatformRow extends StatelessWidget {
  final List<String> imagePaths;
  final List<VoidCallback> onTapCallbacks;

  const PlatformRow({
    Key? key,
    required this.imagePaths,
    required this.onTapCallbacks,
  }) : assert(imagePaths.length == onTapCallbacks.length),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: imagePaths.length ==1? MainAxisAlignment.center :MainAxisAlignment.spaceBetween,
      children: List.generate(imagePaths.length, (index) {
        return PlatformItem(
          imagePath: imagePaths[index],
          onTap: onTapCallbacks[index],
        );
      }),
    );
  }
}
