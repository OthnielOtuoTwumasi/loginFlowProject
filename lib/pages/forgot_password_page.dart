import 'package:flowproject/components/custom_alertdialog.dart';
import 'package:flowproject/components/custom_button.dart';
import 'package:flowproject/components/custom_textField.dart';
import 'package:flowproject/theme.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController forgotPasswordTextEditingController =
      TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    forgotPasswordTextEditingController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/forgotPasswordImage.jpg",
                fit: BoxFit.cover, ),
          ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: Apptheme.sizedBoxHeight40,
              ),
              Padding(
                padding: Apptheme.paddingSymmetricHorizontalMedium,
                child: Text(
                  Apptheme.forgotPassword,
                  style: Apptheme.forgotPasswordText(context),
                ),
              ),
              Padding(
                padding: Apptheme.paddingSymmetricHorizontalMedium,
                child: Text(
                  Apptheme.weWillSendYouAnEmailWithTheLink,
                  style: Apptheme.forgottenPasswordLabelText(context),
                ),
              ),
              Padding(
                padding: Apptheme.paddingAllMedium,
                child: CustomTextField(
                  hintText: Apptheme.forgotPassword,
                  textEditingController: forgotPasswordTextEditingController,
                  borderSideColor: Apptheme.color3,
                ),
              ),
              Padding(
                padding: Apptheme.paddingAllMedium,
                child: CustomButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CustomAlertDialog(
                            iconData: Icons.library_books,
                              titleText: Apptheme.email,
                              contentText:
                                  Apptheme.weWillSendYouAnEmailWithTheLink,
                              onPressed: () {
                                Navigator.pushNamed(context, "/");
                              });
                        });
                  },
                  buttonText: Apptheme.submit,
                  backgroundColor: Apptheme.color1,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
