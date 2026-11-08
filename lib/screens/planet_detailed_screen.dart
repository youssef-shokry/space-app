import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import '../data_models/planet_model.dart';
import '../utilities/app_Constants.dart';
import '../utilities/app_buttons.dart';
import '../utilities/app_colors.dart';
import '../utilities/app_scaffold.dart';
import '../utilities/text_style.dart';

class PlanetDetailed extends StatefulWidget {
  const PlanetDetailed({super.key});

  @override
  State<PlanetDetailed> createState() => _PlanetDetailedState();
}

class _PlanetDetailedState extends State<PlanetDetailed> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final planet = ModalRoute.of(context)!.settings.arguments as PlanetModel;
    final screenHeight = MediaQuery.of(context).size.height;
    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
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
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Text(
                        planet.name,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.titleLarge,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          planet.title,
                          textAlign: TextAlign.start,
                          style: AppTextStyle.titleLarge,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ActionButton(
                            icon: const Icon(Icons.arrow_back),
                            onClick: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 350,
                  child: ModelViewer(
                          src: planet.modelPath,
                          alt: "${planet.name} 3D Model",
                          autoRotate: true,
                          cameraControls: true,
                          backgroundColor: Colors.transparent,
                        ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("About", style: AppTextStyle.titleLarge),
                      const SizedBox(height: 10),
                      Text(planet.description, style: AppTextStyle.bodyLarge),
                      const SizedBox(height: 10),
                      Text(
                        "Distance from Sun (km) : ${planet.distanceFromSun}",
                        style: AppTextStyle.detailedText,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Length of Day (hours) : ${planet.lengthOfDay}",
                        style: AppTextStyle.detailedText,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Orbital Period (Earth years) : ${planet.orbitalPeriod}",

                        style: AppTextStyle.detailedText,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Radius (km) : ${planet.radius}",

                        style: AppTextStyle.detailedText,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Mass (kg) : ${planet.mass}",

                        style: AppTextStyle.detailedText,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Gravity (m/s²) : ${planet.gravity}",

                        style: AppTextStyle.detailedText,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Surface Area (km²) : ${planet.surfaceArea}",

                        style: AppTextStyle.detailedText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
