import 'package:flutter/foundation.dart';
import 'package:me/configs/configs.dart';
import 'package:me/utils/about_utils.dart';
import 'package:me/utils/utils.dart';
import 'package:me/utils/work_utils.dart';

import 'package:me/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:me/constants.dart';
import 'package:me/widget/about_me_data.dart';
import 'package:me/widget/community_button.dart';
import 'package:me/widget/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          // const CustomSectionSubHeading(
          //   text: 'Get to know me :)',
          // ),
          // Space.y1!,
          // Image.asset(
          //   StaticUtils.mobilePhoto,
          //   height: height * 0.27,
          // ),
          // SizedBox(
          //   height: height * 0.03,
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     "Who am I?",
          //     style: AppText.b2!.copyWith(
          //       color: AppTheme.c!.primary,
          //     ),
          //   ),
          // ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b1!.copyWith(
              fontFamily: 'Montserrat',
               height: 1.4
            ),
            textAlign: TextAlign.center
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Agustina',
            ),
            textAlign: TextAlign.center
          ),
          OutlinedButton(
              child: Text("View Resume"),
              onPressed: () {
                kIsWeb
                    ? html.window.open(StaticUtils.resume, "pdf")
                    : openURL(StaticUtils.resume);
              },
              style: ButtonStyle(
              backgroundColor:  MaterialStateProperty.all(const Color.fromARGB(221, 110, 243, 165)),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14),
            ),
            
          )),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
                )
                .toList(),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "Name",
            information: "Muhammad Hamza",
          ),
          const AboutMeData(
            data: "Email",
            information: "hamza.6.shakeel@gmail.com",
          ),
          Space.y!,
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: WorkUtils.logos
                  .asMap()
                  .entries
                  .map(
                    (e) => CommunityIconBtn(
                      icon: e.value,
                      link: WorkUtils.communityLinks[e.key],
                      height: WorkUtils.communityLogoHeight[e.key],
                    ),
                  )
                  .toList()),
        ],
      ),
    );
  }
}
