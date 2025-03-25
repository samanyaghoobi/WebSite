import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const double customRadius=200;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20,),//todo :responsive 
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center ,
                children: [
                    CircleAvatar(
                      radius: customRadius,
                      backgroundImage: AssetImage('assets/images/blue_background.webp'),
                    ),// ring
                   const CircleAvatar(
                    radius: customRadius -10,
                    backgroundImage: AssetImage('assets/images/pic_profile.webp'),
                    ), // profilepic 
                ],
              ),
            ],)
        ],
      ),
    );
  }
}