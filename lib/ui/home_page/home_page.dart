import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:personal_web_site/core/constant/sotial_link.dart';
import 'package:personal_web_site/core/functions/url_luncher.dart';
import 'package:personal_web_site/core/widget/myRotatikonAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _padding = 8.0;
  final double _iconSize = 25.0;
  final double _radius = 210.0;
  final int _duration = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    MyRotationAnimation(
                      duration: Duration(seconds: _duration),
                      child: CircleAvatar(
                        radius: _radius,
                        backgroundImage: AssetImage(
                          'assets/images/blue_background.webp',
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: _radius - 10,
                      backgroundImage: AssetImage('assets/images/profile_pic.webp'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
        
            SocialButton(
              showLabel: true,
              onTap: () => launchURL(MySotaillink.myInstagramLink),
              mini: false,
              label: 'Instagram',
              icon: Icon(
                FontAwesomeIcons.instagram,
                color: Colors.white,
                size: _iconSize,
              ),
              buttonColor: ButtonColors.instagram,
              padding: EdgeInsets.all(_padding),
            ),
            SocialButton(
              onTap: () => launchURL(MySotaillink.myYoutubeLink),
              mini: false,
              label: 'YouTube',
              icon: Icon(
                FontAwesomeIcons.youtube,
                color: Colors.white,
                size: _iconSize,
              ),
              buttonColor: ButtonColors.youtube,
              padding: EdgeInsets.all(_padding),
            ),
            SocialButton(
              onTap: () => launchURL(MySotaillink.myLinkdinLink),
              mini: false,
              label: 'Linkdin',
              icon: Icon(
                FontAwesomeIcons.linkedin,
                color: Colors.white,
                size: _iconSize,
              ),
              buttonColor: ButtonColors.linkedin,
              padding: EdgeInsets.all(_padding),
            ),
        
            SocialButton(
              onTap: () => launchURL(MySotaillink.myGithubLink),
              mini: false,
              label: 'GitHub',
              icon: Icon(
                FontAwesomeIcons.github,
                color: Colors.white,
                size: _iconSize,
              ),
              buttonColor: ButtonColors.github,
              padding: EdgeInsets.all(_padding),
            ),
          ],
        ),
      ),
    );
  }
}
