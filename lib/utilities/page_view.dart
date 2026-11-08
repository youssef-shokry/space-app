import 'package:flutter/material.dart';


class AppPageView extends StatefulWidget {
  final List<Widget> planetImage;
  final PageController pageController;
  final ValueChanged<int> onPageChanged;

  const AppPageView({
    super.key,
    required this.planetImage,
    required this.pageController,
    required this.onPageChanged,
  });

  @override
  State<AppPageView> createState() => _AppPageViewState();
}

class _AppPageViewState extends State<AppPageView> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(44),
          child: SizedBox(
            height: screenHeight * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView(
                    controller: widget.pageController,
                    onPageChanged: widget.onPageChanged,
                    children: widget.planetImage,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
