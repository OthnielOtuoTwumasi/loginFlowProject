import 'package:flowproject/components/custom_button.dart';
import 'package:flowproject/components/custom_textField.dart';
import 'package:flowproject/components/google_button.dart';
import 'package:flowproject/theme.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Apptheme.color2,size: 300,)),
            Positioned.fill(
              child: Image.asset(
                "assets/images/register.jpg",
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
                      Apptheme.createANewAccount,
                      textAlign: TextAlign.center,
                      style: Apptheme.loginHeaderText(context),
                    ),
                    Text(
                      Apptheme.youAreMomentsAway,
                      textAlign: TextAlign.center,
                      style: Apptheme.loginSubText(context),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: Apptheme.paddingAllMedium,
                      child: Text(
                        Apptheme.email,
                        style: Apptheme.textFieldLabelText(context),
                      ),
                    ),
                    Padding(
                      padding: Apptheme.paddingSymmetricHorizontalMedium,
                      child: CustomTextField(
                        hintText: "",
                        textEditingController: emailTextEditingController,
                      ),
                    ),
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
                    Padding(
                      padding: Apptheme.paddingAllMedium,
                      child: Text(
                        Apptheme.password,
                        style: Apptheme.textFieldLabelText(context),
                      ),
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
                Center(child: Text(Apptheme.or,style: Apptheme.textFieldLabelText(context),)),
               Padding(
                 padding: Apptheme.paddingAllMedium,
                 child: CustomGoogleButton(onPressed: (){},),
               )
                
              ],
            ),
          ],
        ));;
  }
}
