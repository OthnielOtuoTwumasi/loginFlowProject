import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_button.dart';
import '../theme.dart';

class AuthenticationInterface extends StatelessWidget {
  const AuthenticationInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/authInterface.png',
              fit: BoxFit.cover,
            ),
          ),
          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Apptheme.colorBlack.withOpacity(0.95)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: Apptheme.paddingAllDefault,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    Apptheme.quizUpToStandOut,
                    style: Apptheme.authInterfaceHeadingText(context),
                  ),
                ),
                Center(
                  child: Text(Apptheme.challengeTheNorm,
                      style: Apptheme.authInterfaceSubText(context)),
                ),
                const SizedBox(
                  height: Apptheme.sizedBoxHeight40,
                ),
                CustomButton(
                  backgroundColor: Colors.transparent,
                  borderSide: BorderSide(
                      width: Apptheme.borderWidth2, color: Apptheme.color1),
                  onPressed: () {
                    Navigator.pushNamed(context, "loginPage");
                  },
                  buttonText: Apptheme.login,
                ),
                const SizedBox(
                  height: Apptheme.sizedBoxHeightSmall,
                ),
                CustomButton(
                  backgroundColor: Apptheme.color1,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/registerPage",
                    );
                  },
                  buttonText: Apptheme.register,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
