import 'package:flutter/material.dart';

class Shimmer extends StatefulWidget {
  const Shimmer({
    required this.child,
    this.baseColor = const Color(0xFF1E3A2F),
    this.highlightColor = const Color(0xFF2D5A47),
    this.duration = const Duration(milliseconds: 1500),
    super.key,
  });

  final Widget child;
  final Color baseColor;
  final Color highlightColor;
  final Duration duration;

  @override
  State<Shimmer> createState() => _ShimmerState();
}

class _ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        final value = _controller.value;
        return ShaderMask(
          blendMode: .srcATop,
          shaderCallback: (bounds) => LinearGradient(
            begin: .topLeft,
            end: .bottomRight,
            colors: <Color>[
              widget.baseColor,
              widget.highlightColor,
              widget.baseColor,
            ],
            stops: <double>[value - .3, value, value + .3],
          ).createShader(bounds),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    this.size,
    this.borderRadius,
    this.baseColor = const Color(0xFF1E3A2F),
    this.highlightColor = const Color(0xFF2D5A47),
    super.key,
  });

  final Size? size;
  final BorderRadius? borderRadius;
  final Color baseColor;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: SizedBox.fromSize(
        size: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius ?? .circular(4),
          ),
        ),
      ),
    );
  }
}
