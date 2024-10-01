import 'package:flutter/material.dart';
import 'package:flutter_portfolio/About_me_text.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
class About_me extends StatelessWidget {
   
  About_me({super.key, });

  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'About', title: 'Me'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: AboutMeText(ratio: 1.5,),
                  extraLargeScreen: AboutMeText(ratio: 1.6),
                  largeMobile: AboutMeText(ratio: 1.8),
                  mobile: AboutMeText(ratio: 1.5),
                  tablet: AboutMeText(ratio: 1.7)))
        ],
      ),
    );
  }
}







