import 'package:flutter/material.dart';
import 'package:myportfolio/Screens/keys.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/cosntantsFunction.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List drawerList = [
    'HOME',
    'SERVICE',
    'EXPERIENCE',
    'CONTACT',
    'ABOUT',
    'SKILLS',
    'DOWNLOAD RESUME'
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: mainColor1,
      child: Column(
        children: drawerList
            .map((e) => ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    switch (e) {
                      case 'HOME':
                        scrollToSection(home);
                        break;
                      case 'SERVICE':
                        scrollToSection(service);
                        break;
                      case 'EXPERIENCE':
                        scrollToSection(experience);
                        break;
                      case 'CONTACT':
                        scrollToSection(contact);
                        break;
                      case 'SKILLS':
                        scrollToSection(skills);
                        break;
                      case 'ABOUT':
                        scrollToSection(about);
                        break;
                      case 'DOWNLOAD RESUME':
                        downloadResume('assets/file/RishabhATS2.pdf', 'resume');
                        break;
                    }
                  },
                  title: Text(
                    e,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
