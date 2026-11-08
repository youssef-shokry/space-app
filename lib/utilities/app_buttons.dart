import 'package:flutter/material.dart';
import 'package:space_app/utilities/app_colors.dart';

class ExploreAppButtons extends StatelessWidget {
  final VoidCallback onClick;
  final String? text;
  final String planetName;

  const ExploreAppButtons({
    super.key,
    this.text,
    required this.onClick,
    required this.planetName,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.red,
        padding: const EdgeInsets.all(16),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(32),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "$text $planetName",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward, color: AppColors.white, size: 20),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onClick;

  const ActionButton({super.key, required this.icon, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: AppColors.red,
        padding: const EdgeInsets.all(16),
        foregroundColor: AppColors.white,
        iconSize: 22,
      ),
      child: icon,
    );
  }
}
