import 'package:flutter/material.dart';
import 'package:me/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "< ",
          style: AppText.b2b!.copyWith(
            fontFamily: 'Montserrat',
          )
        ),
        Text(
          "A Flutter app",
          style: AppText.b2b!.copyWith(
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          style: AppText.b2b!.copyWith(
            fontFamily: 'Montserrat',
          )
        )
      ],
    );
  }
}
