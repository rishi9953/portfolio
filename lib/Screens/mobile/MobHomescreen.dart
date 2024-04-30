import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myportfolio/Screens/keys.dart';
import 'package:myportfolio/Screens/mobile/MobAbout.dart';
import 'package:myportfolio/Screens/mobile/MobContactMe.dart';
import 'package:myportfolio/Screens/mobile/MobDrawer.dart';
import 'package:myportfolio/Screens/mobile/MobMyExperiences.dart';
import 'package:myportfolio/Screens/mobile/MobMyServices.dart';
import 'package:myportfolio/Screens/mobile/MobMySkills.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/cosntantsFunction.dart';
import 'package:myportfolio/widgets.dart';

class HomeScreenMob extends StatefulWidget {
  const HomeScreenMob({super.key});

  @override
  State<HomeScreenMob> createState() => _HomeScreenMobState();
}

class _HomeScreenMobState extends State<HomeScreenMob> {
  List header = [];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor1,
      floatingActionButton: FloatingActionButton(
        backgroundColor: yellow,
        onPressed: () {
          scrollToSection(home);
        },
        child: Icon(
          Icons.arrow_upward,
          color: blackColor,
        ),
      ),
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'About',
            style: TextStyle(
                color: whiteColor, fontSize: 18, fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: 'Me.', style: TextStyle(color: yellow)),
            ],
          ),
        ),
        backgroundColor: mainColor2,

        // actions: [
        //   // MyDrawer(),
        //   IconButton(
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       icon: const Icon(Icons.menu))
        // ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(20),
              Container(
                  key: home,
                  margin: EdgeInsets.symmetric(horizontal: size.width * .05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello, Welcome',
                          style: Theme.of(context).textTheme.titleSmall!.merge(
                              const TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w700))),
                      const Gap(30),
                      Text('I am Rishabh kumar',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .merge(TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold))),
                      const Gap(20),
                      Text(
                          'I am a meticulous problem-solver, crafting elegant code with a passion for innovation. Collaborative and adaptable, you thrive on learning and excel in dynamic environments.',
                          style: TextStyle(color: subTitleColor, height: 1.5)),
                      const Gap(20),
                      contactUs(context, () {
                        scrollToSection(contact);
                      }),
                      // const Gap(20),
                      SizedBox(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/me.jpg',
                            height: 500,
                            width: 500,
                          ),
                        ),
                      )
                    ],
                  )),
              MobMyServices(
                key: service,
              ),
              MobMyExperiences(
                key: experience,
              ),
              MobMySkills(
                key: skills,
              ),
              MobContactMe(
                key: contact,
              ),
              MobAboutWidget(
                key: about,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget commonAction({required String title, void Function()? onTap}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (value) {
        if (!header.contains(title)) {
          setState(() {
            header.add(title);
          });
        }
      },
      onExit: (value) {
        if (header.contains(title)) {
          setState(() {
            header.remove(title);
          });
        }
      },
      child: GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(title,
                style: TextStyle(
                    color: header.contains(title) ? yellow : whiteColor)),
          )),
    );
  }

  Widget commonText(context, text) {
    return MouseRegion(
        child: Text(text, style: TextStyle(fontSize: 21, color: textColor)));
  }
}
