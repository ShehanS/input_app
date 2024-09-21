import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum PrimaryColorEnum { primaryBase, primary1, primary5 }

enum NeutralColorEnum { neutral1, primary5 }

class CustomText {
  Text h1({required String txt, double fontSize = 20, bool bold = false, TextAlign textAlign = TextAlign.left, Color color = Colors.black}) {
    return Text(
      txt,
      style: GoogleFonts.ubuntu(color: color, fontSize: fontSize, fontWeight: bold ? FontWeight.bold : FontWeight.normal),
      textAlign: textAlign,
    );
  }
  Text primary({required String txt, double fontSize = 20, FontWeight fontWeight = FontWeight.normal, PrimaryColorEnum primaryColorEnum = PrimaryColorEnum.primaryBase}) {
    late Color colors;

    if (primaryColorEnum == PrimaryColorEnum.primaryBase) {
      colors = const Color.fromRGBO(51, 59, 142, 10);
    } else if (primaryColorEnum == PrimaryColorEnum.primary5) {
      colors = const Color.fromRGBO(47, 46, 110, 10);
    }
    return Text(
      txt,
      style: GoogleFonts.ubuntu(
        color: colors,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  Text grey({required String txt, double fontSize = 20, FontWeight fontWeight = FontWeight.normal, NeutralColorEnum primaryColorEnum = NeutralColorEnum.neutral1}) {
    late Color colors;

    if (primaryColorEnum == NeutralColorEnum.neutral1) {
      colors = const Color.fromRGBO(99, 99, 97, 10);
    } 
    
    return Text(
      txt,
      style: GoogleFonts.ubuntu(
        color: colors,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  Text dynamicTxt({
    required String txt,
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.white24,
    TextAlign align = TextAlign.justify,
    TextDecoration decoration = TextDecoration.none,
    Color decorationColor = Colors.white30,
    double decorationThickness =  1
  }) {
    return Text(
      txt,
      textAlign: align,
      overflow: TextOverflow.visible,
      // textDirection: TextDecoration.underline,
      style: GoogleFonts.ubuntu(
        decoration: decoration,
        decorationColor: decorationColor,
        decorationThickness: decorationThickness,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
