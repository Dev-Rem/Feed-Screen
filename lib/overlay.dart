import 'package:flutter/material.dart';

class FullScreenOverlay extends StatelessWidget {
  final Widget child;
  final Function() onTap;

  const FullScreenOverlay({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
              // Adjust the opacity or color as needed
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: child,
          ),
        ],
      ),
    );
  }
}
