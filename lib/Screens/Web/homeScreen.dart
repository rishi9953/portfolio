import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myportfolio/Screens/Web/about.dart';
import 'package:myportfolio/Screens/Web/contactMe.dart';
import 'package:myportfolio/Screens/Web/myExperience.dart';
import 'package:myportfolio/Screens/Web/myservices.dart';
import 'package:myportfolio/Screens/Web/skills.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/cosntantsFunction.dart';
import 'package:myportfolio/widgets.dart';
import 'dart:html';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final home = GlobalKey();
  final about = GlobalKey();
  final service = GlobalKey();
  final contact = GlobalKey();
  final portfolio = GlobalKey();
  final experience = GlobalKey();
  final skills = GlobalKey();
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
        actions: [
          commonAction(
              title: 'HOME',
              onTap: () {
                scrollToSection(home);
              }),

          commonAction(
            title: 'SERVICE',
            onTap: () {
              scrollToSection(service);
            },
          ),
          // commonAction(title: 'PORTFOLIO'),
          // commonAction(title: 'RESUME'),
          commonAction(
              title: 'EXPERIENCE',
              onTap: () {
                scrollToSection(experience);
              }),
          commonAction(
              title: 'CONTACT',
              onTap: () {
                scrollToSection(contact);
              }),
          commonAction(
              title: 'ABOUT',
              onTap: () {
                scrollToSection(about);
              }),
          Padding(
            padding: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 8.0),
            child: PopupMenuButton(
                icon: Icon(Icons.menu),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      onTap: () {
                        scrollToSection(skills);
                      },
                      child: Text('Skills'),
                    ),
                    PopupMenuItem(
                      onTap: () {
                        downloadResume('assets/file/RishabhATS2.pdf', 'resume');
                      },
                      child: Text('Download Resume'),
                    ),
                  ];
                }),
          )
          // Padding(
          //     padding: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 8.0),
          //     child: IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.menu),
          //     )),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                key: home,
                margin: EdgeInsets.symmetric(horizontal: size.width * .05),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello, Welcome',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .merge(const TextStyle(
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
                            style:
                                TextStyle(color: subTitleColor, height: 1.5)),
                        const Gap(20),
                        contactUs(context, () {
                          scrollToSection(contact);
                        })
                      ],
                    )),
                    const Gap(50),
                    Expanded(
                        child: SizedBox(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/me.jpg',
                          height: 500,
                          width: 500,
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              MyServices(
                key: service,
              ),
              MyExperience(
                key: experience,
              ),
              MySkills(
                key: skills,
              ),
              ContactMe(
                key: contact,
              ),
              AboutWidget(
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
