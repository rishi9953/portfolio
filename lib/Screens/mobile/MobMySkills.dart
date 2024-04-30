import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:myportfolio/constants.dart';

class MobMySkills extends StatelessWidget {
  MobMySkills({super.key});

  List skillList = [
    {'title': "Dart", 'value': 'dart'},
    {'title': "Flutter", 'value': 'flutter'},
    {'title': "Firebase", 'value': 'firebase'},
    {'title': "Html", 'value': 'html'},
    {'title': "Css", 'value': 'css'},
    {'title': "Javascript", 'value': 'javscript'},
    {'title': "NodeJs", 'value': 'node'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'My ',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .merge(TextStyle(color: whiteColor)),
              children: [
                TextSpan(
                  text: 'Skills',
                  style: Theme.of(context).textTheme.headlineSmall!.merge(
                        TextStyle(color: yellow),
                      ),
                )
              ],
            ),
          ),
          const Gap(25),
          Container(
            decoration: BoxDecoration(
                color: mainColor2, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 20,
              children: skillList.map((e) => skills(e)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget skills(name) {
    return Column(
      children: [
        Image.asset(
          '$skillsPath/${name['value']}.png',
          width: 70,
          height: 70,
        ),
        const Gap(10),
        Text(
          name['title'],
          style: TextStyle(color: whiteColor),
        )
      ],
    );
  }
}
