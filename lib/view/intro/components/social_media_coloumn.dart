import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: ()=>launchUrl(Uri.parse('https://www.linkedin.com/in/atif-afridi-448a67265?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'))),
        SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/AtifAfridiii')),),
        SocialMediaIcon(icon: 'assets/icons/upwork.svg',onTap: () => launchUrl(Uri.parse('https://www.upwork.com/freelancers/~01043f694f2b6e291c?mp_source=share')),),
        const SocialMediaIcon(icon: 'assets/icons/dribble.svg',),
        const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
      ],
    );
  }
}
