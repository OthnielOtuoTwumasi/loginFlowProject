import 'package:flowproject/components/custom_button.dart';
import 'package:flowproject/components/custom_textField.dart';
import 'package:flowproject/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    usernameTextEditingController;
    passwordTextEditingController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/login.jpg",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Apptheme.colorBlack.withOpacity(1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),

        ///main
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///welcome
            Column(
              children: [
                Text(
                  Apptheme.logIntoYourAccount,
                  textAlign: TextAlign.center,
                  style: Apptheme.loginHeaderText(context),
                ),
                Text(
                  Apptheme.welcomeBackChamp,
                  textAlign: TextAlign.center,
                  style: Apptheme.loginSubText(context),
                ),

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: Apptheme.paddingAllMedium,
                  child: Text(
                    Apptheme.username,
                    style: Apptheme.textFieldLabelText(context),
                  ),
                ),
                Padding(
                  padding: Apptheme.paddingSymmetricHorizontalMedium,
                  child: CustomTextField(
                    hintText: "",
                    textEditingController: usernameTextEditingController,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: Apptheme.paddingAllMedium,
                      child: Text(
                        Apptheme.password,
                        style: Apptheme.textFieldLabelText(context),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/forgotPasswordPage");
                      },
                      child: Padding(
                        padding: Apptheme.forgotPasswordPadding,
                        child: Text(
                          Apptheme.forgotPassword,
                          style: Apptheme.forgottenPasswordLabelText(context),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: Apptheme.paddingSymmetricHorizontalMedium,
                  child: CustomTextField(
                    hintText: "",
                    textEditingController:passwordTextEditingController,
                    obscureText: true,
                  ),
                ),
              ],
            ),

            Padding(
              padding: Apptheme.paddingAllMedium,
              child: CustomButton(
                onPressed: () {},
                buttonText: Apptheme.submit,

                backgroundColor: Apptheme.color1,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
