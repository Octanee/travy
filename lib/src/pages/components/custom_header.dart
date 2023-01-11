import 'package:travy/src/common.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, this.height = 32});

  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _BottomAppBarClipper(),
      child: Container(
        color: Colors.white,
        width: double.maxFinite,
        height: height,
      ),
    );
  }
}

class _BottomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    const gapWidth = 80.0;
    const gapHeight = 16.0;
    const dragWidth = gapWidth - 8;
    const dragHeight = gapHeight - 4;
    const borderRadius = 32.0;
    const radius = 8.0;

    final path = Path()
      ..moveTo(0, borderRadius)
      ..quadraticBezierTo(0, 0, borderRadius, 0)
      ..lineTo(w / 2 - gapWidth / 2 - radius, 0)
      ..quadraticBezierTo(
        w / 2 - gapWidth / 2,
        0,
        w / 2 - gapWidth / 2,
        radius / 2,
      )
      ..lineTo(w / 2 - gapWidth / 2, gapHeight - radius)
      ..quadraticBezierTo(
        w / 2 - gapWidth / 2,
        gapHeight,
        w / 2 - gapWidth / 2 + radius,
        gapHeight,
      )
      ..lineTo(w / 2 + gapWidth / 2 - radius, gapHeight)
      ..quadraticBezierTo(
        w / 2 + gapWidth / 2,
        gapHeight,
        w / 2 + gapWidth / 2,
        gapHeight - radius,
      )
      ..lineTo(w / 2 + gapWidth / 2, radius)
      ..quadraticBezierTo(
        w / 2 + gapWidth / 2,
        0,
        w / 2 + gapWidth / 2 + radius,
        0,
      )
      ..lineTo(w - borderRadius, 0)
      ..quadraticBezierTo(w, 0, w, borderRadius)
      ..lineTo(w, h)
      ..lineTo(0, h)
      ..close()
      ..moveTo(w / 2 - dragWidth / 2, radius)
      ..quadraticBezierTo(
        w / 2 - dragWidth / 2,
        0,
        w / 2 - dragWidth / 2 + radius,
        0,
      )
      ..lineTo(w / 2 + dragWidth / 2 - radius, 0)
      ..quadraticBezierTo(
        w / 2 + dragWidth / 2,
        0,
        w / 2 + dragWidth / 2,
        radius,
      )
      ..lineTo(w / 2 + dragWidth / 2, dragHeight - radius)
      ..quadraticBezierTo(
        w / 2 + dragWidth / 2,
        dragHeight,
        w / 2 + dragWidth / 2 - radius,
        dragHeight,
      )
      ..lineTo(w / 2 - dragWidth / 2 + radius, dragHeight)
      ..quadraticBezierTo(
        w / 2 - dragWidth / 2,
        dragHeight,
        w / 2 - dragWidth / 2,
        dragHeight - radius,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
