import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/utilities/app_Constants.dart';
import 'package:space_app/utilities/app_buttons.dart';
import 'package:space_app/utilities/app_colors.dart';
import 'package:space_app/utilities/app_scaffold.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppConstants.loginImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    AppConstants.homeScreenText,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: ExploreAppButtons(
                        text: AppConstants.exploreText,
                        planetName: "",
                        onClick: () {
                          Navigator.pushNamed(context, "homeScreen");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
