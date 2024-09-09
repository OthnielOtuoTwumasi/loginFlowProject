import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgroundColor;
  final String buttonText;
  final BorderSide? borderSide;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    required this.onPressed,
    required this.buttonText,
    this.borderSide = const BorderSide(color: Colors.transparent, width: 0),
    this.backgroundColor = Apptheme.color3,
    this.padding = Apptheme.paddingAllDefault,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            side: borderSide,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Apptheme.borderRadiusButtonSmall))),
        child: Padding(
          padding: padding,
          child: Text(
            buttonText,
            textAlign: TextAlign.start,
            style: GoogleFonts.roboto(
              color: Apptheme.color3,
              fontSize: Apptheme.fontSizeAlmostLarge,
            ),
          ),
        ));
  }
}
