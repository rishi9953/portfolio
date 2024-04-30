import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:myportfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  List social = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: mainColor2,
      child: Container(
        margin: const EdgeInsets.all(64.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'AboutMe.',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .merge(TextStyle(color: whiteColor)),
            ),
            const Gap(25),
            Text(
                'I am a meticulous problem-solver, crafting elegant code with a passion for innovation. ',
                style: TextStyle(color: subTitleColor)),
            const Gap(10),
            Text(
                ' Collaborative and adaptable, you thrive on learning and excel in dynamic environments.',
                style: TextStyle(color: subTitleColor)),
            const Gap(20),
            Wrap(
              spacing: 16,
              children: [
                svgPicture('facebook', facebook),
                svgPicture('linkdin', likedin),
                svgPicture('insta', insta),
                svgPicture('youtube', youtube),
                svgPicture('github', github),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget svgPicture(name, link) {
    return MouseRegion(
      onEnter: (value) {
        if (!social.contains(name)) {
          setState(() {
            social.add(name);
          });
        }
      },
      onExit: (value) {
        if (social.contains(name)) {
          setState(() {
            social.remove(name);
          });
        }
      },
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () async {
          if (await canLaunchUrl(Uri.parse(link))) {
            launchUrl(Uri.parse(link));
          }
        },
        child: SvgPicture.asset(
          '$socialPath/$name.svg',
          color: social.contains(name) ? yellow : socialColor,
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}
