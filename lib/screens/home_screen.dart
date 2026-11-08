import 'package:flutter/material.dart';
import 'package:space_app/utilities/app_colors.dart';
import 'package:space_app/utilities/app_scaffold.dart';
import 'package:space_app/utilities/text_style.dart';
import '../utilities/app_Constants.dart';
import '../utilities/app_buttons.dart';
import '../utilities/page_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _planet = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return AppScaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.25,
            child: SafeArea(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      AppConstants.halfPlanet,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          AppColors.black.withValues(alpha: 0.4),
                        ],
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: Text(
                      AppConstants.exploreText,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.titleLarge,
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        AppConstants.planetToExplore,
                        textAlign: TextAlign.start,
                        style: AppTextStyle.titleLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppPageView(
            planetImage: AppConstants.planet
                .map((p) => Image.asset(p.imagePath, fit: BoxFit.cover))
                .toList(),
            pageController: _pageController,
            onPageChanged: (index) {
              setState(() {
                _planet = index;
              });
            },
          ),
          SizedBox(height: screenHeight * 0.07),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ActionButton(
                    icon: const Icon(Icons.arrow_back),
                    onClick: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  Center(
                    child: Text(
                      AppConstants.planet[_planet].name,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(width: 20),
                  ActionButton(
                    icon: const Icon(Icons.arrow_forward),
                    onClick: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: ExploreAppButtons(
                      text: AppConstants.exploreText,
                      planetName: AppConstants.planet[_planet].name,
                      onClick: () {
                        Navigator.pushNamed(
                          context,
                          "planetDetailedScreen",
                          arguments: AppConstants.planet[_planet],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
