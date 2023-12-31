import 'package:flutter/material.dart';
import 'package:me/sections/about/about.dart';
import 'package:me/sections/contact/contact.dart';
import 'package:me/sections/home/home.dart';
import 'package:me/sections/portfolio/portfolio.dart';
import 'package:me/sections/services/services.dart';
import 'package:me/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  ];

  static const List<String> socialLinks = [
    "https://www.linkedin.com/in/abdulrahimanbasith/",
    "https://github.com/basithrehman",
  ];

  static const String resume =
      'https://drive.google.com/file/d/18zsVrmZxMti671h2xLiKns3lrxlasTNV/view?usp=sharing';

  static const String gitHub = 'https://github.com/basithrehman';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
