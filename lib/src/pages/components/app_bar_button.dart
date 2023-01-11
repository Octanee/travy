import 'package:travy/src/common.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key, required this.icon, this.onTap});

  final VoidCallback? onTap;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(12),
      ),
      onPressed: onTap,
      child: icon,
    );
  }
}
