import 'package:flutter/material.dart';

class AROverlayWidget extends StatelessWidget {
  final bool isCalibrated;
  final String referenceType;

  const AROverlayWidget({
    super.key,
    required this.isCalibrated,
    required this.referenceType,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.infinite,
      painter: AROverlayPainter(
        isCalibrated: isCalibrated,
        referenceType: referenceType,
      ),
    );
  }
}

class AROverlayPainter extends CustomPainter {
  final bool isCalibrated;
  final String referenceType;

  AROverlayPainter({
    required this.isCalibrated,
    required this.referenceType,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    // Draw alignment grid
    _drawAlignmentGrid(canvas, size, paint);

    // Draw reference object guide
    if (!isCalibrated) {
      _drawReferenceGuide(canvas, size, paint);
    }

    // Draw measurement area
    if (isCalibrated) {
      _drawMeasurementArea(canvas, size, paint);
    }
  }

  void _drawAlignmentGrid(Canvas canvas, Size size, Paint paint) {
    // Draw horizontal center line
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint..color = Colors.white.withOpacity(0.3),
    );

    // Draw vertical center line
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width / 2, size.height),
      paint..color = Colors.white.withOpacity(0.3),
    );
  }

  void _drawReferenceGuide(Canvas canvas, Size size, Paint paint) {
    final guideRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: 200,
        height: referenceType == 'ruler' ? 80 : 100,
      ),
      const Radius.circular(8),
    );

    // Draw guide rectangle
    canvas.drawRRect(
      guideRect,
      paint..color = Colors.green.withOpacity(0.5),
    );

    // Draw text
    final textPainter = TextPainter(
      text: TextSpan(
        text: 'Place $referenceType here',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(
        size.width / 2 - textPainter.width / 2,
        size.height / 2 + 60,
      ),
    );
  }

  void _drawMeasurementArea(Canvas canvas, Size size, Paint paint) {
    // Draw measurement area rectangle
    final measureRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width * 0.8,
        height: size.height * 0.4,
      ),
      const Radius.circular(12),
    );

    canvas.drawRRect(
      measureRect,
      paint..color = Colors.blue.withOpacity(0.3),
    );

    // Draw corner indicators
    const cornerSize = 20.0;
    final corners = [
      Offset(measureRect.left, measureRect.top),
      Offset(measureRect.right, measureRect.top),
      Offset(measureRect.left, measureRect.bottom),
      Offset(measureRect.right, measureRect.bottom),
    ];

    for (final corner in corners) {
      canvas.drawLine(
        corner,
        Offset(
            corner.dx +
                (corner.dx == measureRect.left ? cornerSize : -cornerSize),
            corner.dy),
        paint..color = Colors.white,
      );
      canvas.drawLine(
        corner,
        Offset(
            corner.dx,
            corner.dy +
                (corner.dy == measureRect.top ? cornerSize : -cornerSize)),
        paint..color = Colors.white,
      );
    }
  }

  @override
  bool shouldRepaint(AROverlayPainter oldDelegate) {
    return oldDelegate.isCalibrated != isCalibrated ||
        oldDelegate.referenceType != referenceType;
  }
}
