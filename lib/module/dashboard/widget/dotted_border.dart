import 'package:flutter/material.dart';

class DottedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;

  DottedBorderPainter({
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.gap = 5.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    const dashWidth = 4;
    final dashSpace = gap;

    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawPath(
        Path()
          ..moveTo(startX, size.height / 2)
          ..lineTo(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(DottedBorderPainter oldPainter) {
    return color != oldPainter.color ||
        strokeWidth != oldPainter.strokeWidth ||
        gap != oldPainter.gap;
  }
}

class DottedBorder extends StatelessWidget {
  final Color color;
  final double strokeWidth;
  final double gap;
  final Widget child;

  const DottedBorder({
    super.key,
    required this.child,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.gap = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DottedBorderPainter(
        color: color,
        strokeWidth: strokeWidth,
        gap: gap,
      ),
      child: child,
    );
  }
}
