import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myportfolio/constants.dart';

class MobMyExperiences extends StatefulWidget {
  const MobMyExperiences({super.key});

  @override
  State<MobMyExperiences> createState() => _MobMyExperiencesState();
}

class _MobMyExperiencesState extends State<MobMyExperiences> {
  List experiece = [
    {
      'year': '2020-2022',
      'designation': 'Flutter Developer',
      'company': 'Vigilate Digital Carrer maker pvt ltd',
      'description':
          'There are many variations of passages of Lorem Ipsumav ailable, but the majority have suffered alteration in some',
    },
    {
      'year': '2022-2023',
      'designation': 'Flutter Developer',
      'company': 'Build with innovation pvt ltd',
      'description':
          'There are many variations of passages of Lorem Ipsumav ailable, but the majority have suffered alteration in some',
    },
    {
      'year': '2023-2024',
      'designation': 'Flutter Developer',
      'company': 'Hostbooks pvt ltd',
      'description':
          'There are many variations of passages of Lorem Ipsumav ailable, but the majority have suffered alteration in some',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: mainColor1,
      width: double.infinity,
      margin: EdgeInsets.all(32),
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
                  text: 'Experience',
                  style: Theme.of(context).textTheme.headlineSmall!.merge(
                        TextStyle(color: yellow),
                      ),
                )
              ],
            ),
          ),
          const Gap(25),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Specializing in Flutter development, I craft sleek and responsive mobile applications tailored to your unique needs. From UI design to seamless functionality, I deliver top-notch solutions for your digital ventures',
              textDirection: TextDirection.ltr,
              softWrap: true,
              style: TextStyle(color: subTitleColor, height: 1.5),
            ),
          ),
          const Gap(25),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: experiece
                .map(
                  (e) => Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                        color: mainColor2,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e['year'],
                            style: TextStyle(color: whiteColor),
                          ),
                          const Gap(10),
                          Text(
                            e['designation'],
                            style: TextStyle(color: yellow),
                          ),
                          const Gap(10),
                          Text(
                            e['company'],
                            style: TextStyle(color: whiteColor),
                          ),
                          const Gap(10),
                          Text(
                            e['description'],
                            style: TextStyle(color: subTitleColor, height: 1.5),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
