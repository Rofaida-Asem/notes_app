import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon.CustomIcon(
      {super.key, required this.icon, required this.onPressed});
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: .05),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, size: 30),
        ),
      ),
    );
  }
}
