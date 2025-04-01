import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:personal_web_site/core/constant/sotial_link.dart';
import 'package:personal_web_site/core/functions/url_luncher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(
                  radius: 210,
                  backgroundImage: AssetImage(
                    'assets/images/blue_background.webp',
                  ),
                ),
                CircleAvatar(
                  radius: 200,
                  backgroundImage: AssetImage('assets/images/profile_pic.webp'),
                ),
              ],
            ),
          ],
        ),
        // SocialButton(
        //   onTap: () {},
        //   padding: EdgeInsets.all(8),
        //   buttonColor: ButtonColors.instagram,
        //   label: 'Instagram',
        //   icon: Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 24),
        // ),

        FlutterSocialButton(
          showLabel: true,
          onTap: () => launchURL(MySotaillink.myInstagramLink),
          mini: false,
          buttonType: ButtonType.instagram,
          title: 'Instagram',
        ),
        FlutterSocialButton(
          onTap: () => launchURL(MySotaillink.myYoutubeLink),
          mini: false,
          buttonType: ButtonType.youtube,
          title: 'YouTube',
        ),
        FlutterSocialButton(
          onTap: () => launchURL(MySotaillink.myLinkdinLink),
          mini: false,
          buttonType: ButtonType.linkedin,
          title: 'Linkdin',
        ),

        FlutterSocialButton(
          onTap: () => launchURL(MySotaillink.myGithubLink),
          mini: false,
          buttonType: ButtonType.github,
          title: 'GitHub',
        ),
      ],
    );
  }
}
