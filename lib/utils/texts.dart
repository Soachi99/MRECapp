import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final double? fontSize;
  final double? minFontSize;
  final double? maxFontSize;
  final double? fontHeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final String? fontFamily;

  const CustomText(this.text,
      {Key? key,
      this.textColor,
      this.fontWeight,
      this.textDecoration,
      this.maxLines,
      this.textAlign,
      this.fontSize = 16,
      this.minFontSize = 9,
      this.maxFontSize = 48,
      this.fontFamily,
      this.fontHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text ?? "",
        textAlign: textAlign,
        maxLines: maxLines ?? 100,
        overflow: TextOverflow.ellipsis,
        style: styleByFamily());
  }

  TextStyle styleByFamily() {
    switch (fontFamily) {
      case "Varela":
        return GoogleFonts.varelaRound(
            fontWeight: fontWeight ?? FontWeight.w400,
            fontSize: _fontSize(),
            height: fontHeight ?? 1,
            color: textColor ?? Colors.black,
            decoration: textDecoration ?? TextDecoration.none);
      default:
        return GoogleFonts.roboto(
            fontWeight: fontWeight ?? FontWeight.w400,
            fontSize: _fontSize(),
            height: fontHeight ?? 1,
            color: textColor ?? Colors.black,
            decoration: textDecoration ?? TextDecoration.none);
    }
  }

  _fontSize() {
    if ((fontSize ?? 16) > maxFontSize!) {
      return maxFontSize;
    }
    if ((fontSize ?? 16) < minFontSize!) {
      return minFontSize;
    }

    return (fontSize ?? 16);
  }
}
