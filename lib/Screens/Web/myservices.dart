import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:myportfolio/constants.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  List experiece = [
    {
      'icon': 'android',
      'service': 'Android App',
      'description':
          'There are many variations of passages of Lorem Ipsumav ailable, but the majority have suffered alteration in some',
    },
    {
      'icon': 'ios',
      'service': 'Ios App',
      'description':
          'There are many variations of passages of Lorem Ipsumav ailable, but the majority have suffered alteration in some',
    },
    {
      'icon': 'website1',
      'service': 'Website',
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
      margin: EdgeInsets.all(64),
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
                  text: 'Services',
                  style: Theme.of(context).textTheme.headlineSmall!.merge(
                        TextStyle(color: yellow),
                      ),
                )
              ],
            ),
          ),
          const Gap(25),
          SizedBox(
            width: size.width * 0.42,
            child: Text(
              'Specializing in Flutter development, I craft sleek and responsive mobile applications tailored to your unique needs. From UI design to seamless functionality, I deliver top-notch solutions for your digital ventures',
              textDirection: TextDirection.ltr,
              softWrap: true,
              style: TextStyle(color: subTitleColor, height: 1.5),
            ),
          ),
          const Gap(25),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 2,
            crossAxisSpacing: 15,
            children: experiece
                .map(
                  (e) => Container(
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                        color: mainColor2,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Text(
                            //   e['year'],
                            //   style: TextStyle(color: whiteColor),
                            // ),
                            SvgPicture.asset(
                              '$servicePath/${e['icon']}.svg',
                              height: 50,
                              width: 50,
                              color: yellow,
                            ),
                            const Gap(10),
                            Text(
                              e['service'],
                              style: TextStyle(color: yellow),
                            ),
                            const Gap(10),
                            Text(
                              e['description'],
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: subTitleColor, height: 1.5),
                            )
                          ],
                        ),
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
