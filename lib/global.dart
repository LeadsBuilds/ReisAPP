import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class Launcher {
  static void launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchPhone(phone) async {
    if (await canLaunch('tel: $phone')) {
      await launch('tel: $phone');
    } else {
      throw 'Could not launch $phone';
    }
  }
}



final reisTheme = Colors.red[400]; //Default ThemeColor

TextStyle defaultFont(TextStyle str) => GoogleFonts.openSans(textStyle: str); //Default Font
