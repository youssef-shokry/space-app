import 'package:flutter/material.dart';
import 'package:space_app/utilities/app_colors.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.black, body: body);
  }
}
