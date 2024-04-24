// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';



// ignore: must_be_immutable
class SocialMediaIcon extends StatelessWidget {
  String socialMedia;
  String socialMediaLink;

  SocialMediaIcon({
    super.key,
    required this.socialMedia,
    required this.socialMediaLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/$socialMedia'),
          radius: 20,
        ),
        onTap: () {
          launchUrl(Uri.parse(socialMediaLink), mode:LaunchMode.externalApplication);
        },
      ),
    );
  }
}
