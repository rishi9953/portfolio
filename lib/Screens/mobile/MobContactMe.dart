import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/widgets.dart';

class MobContactMe extends StatefulWidget {
  const MobContactMe({super.key});

  @override
  State<MobContactMe> createState() => _MobContactMeState();
}

class _MobContactMeState extends State<MobContactMe> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: mainColor2,
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: 'Contact ',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .merge(TextStyle(color: whiteColor)),
                    children: [
                  TextSpan(
                      text: "Me",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .merge(TextStyle(color: yellow)))
                ])),
            const Gap(25),
            Text(
                'Feel free to reach out for collaboration or inquiries. I\'m always eager to connect and discuss exciting projects!',
                style: TextStyle(color: subTitleColor)),
            const Gap(50),
            RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: 'Address _ ',
                    style: TextStyle(color: yellow),
                    children: [
                      TextSpan(
                        text: 'c-120-A Majlis Park Delhi 110033',
                        style: TextStyle(color: whiteColor),
                      )
                    ])),
            const Gap(16),
            RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: 'Phone _ ',
                    style: TextStyle(color: yellow),
                    children: [
                      TextSpan(
                        text: '+91 935 041 4656',
                        style: TextStyle(color: whiteColor),
                      )
                    ])),
            const Gap(16),
            RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: 'E mail _ ',
                    style: TextStyle(color: yellow),
                    children: [
                      TextSpan(
                        text: 'rk5680179@gmail.com',
                        style: TextStyle(color: whiteColor),
                      ),
                    ])),
            const Gap(16),
            RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: 'Website _ ',
                    style: TextStyle(color: yellow),
                    children: [
                      TextSpan(
                        text: 'www.mywebsite.com',
                        style: TextStyle(color: whiteColor),
                      ),
                    ])),
            const Gap(16),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: TextFormField(
                      style: TextStyle(color: whiteColor),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name',
                          hintStyle: TextStyle(color: whiteColor),
                          filled: true,
                          fillColor: Color(0xff1F2937)),
                    ),
                  ),
                  const Gap(25),
                  TextFormField(
                    style: TextStyle(color: whiteColor),
                    maxLines: 6,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Message',
                        hintStyle: TextStyle(color: whiteColor),
                        filled: true,
                        fillColor: Color(0xff1F2937)),
                  ),
                  const Gap(25),
                  contactUs(context, () {})
                ],
              ),
            )
            // Row(
            //   children: [
            //     Expanded(
            //         child: SizedBox(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           RichText(
            //               textAlign: TextAlign.start,
            //               text: TextSpan(
            //                   text: 'Address _ ',
            //                   style: TextStyle(color: yellow),
            //                   children: [
            //                     TextSpan(
            //                       text: 'c-120-A Majlis Park Delhi 110033',
            //                       style: TextStyle(color: whiteColor),
            //                     )
            //                   ])),
            //           const Gap(16),
            //           RichText(
            //               textAlign: TextAlign.start,
            //               text: TextSpan(
            //                   text: 'Phone _ ',
            //                   style: TextStyle(color: yellow),
            //                   children: [
            //                     TextSpan(
            //                       text: '+91 935 041 4656',
            //                       style: TextStyle(color: whiteColor),
            //                     )
            //                   ])),
            //           const Gap(16),
            //           RichText(
            //               textAlign: TextAlign.start,
            //               text: TextSpan(
            //                   text: 'E mail _ ',
            //                   style: TextStyle(color: yellow),
            //                   children: [
            //                     TextSpan(
            //                       text: 'rk5680179@gmail.com',
            //                       style: TextStyle(color: whiteColor),
            //                     ),
            //                   ])),
            //           const Gap(16),
            //           RichText(
            //               textAlign: TextAlign.start,
            //               text: TextSpan(
            //                   text: 'Website _ ',
            //                   style: TextStyle(color: yellow),
            //                   children: [
            //                     TextSpan(
            //                       text: 'www.mywebsite.com',
            //                       style: TextStyle(color: whiteColor),
            //                     ),
            //                   ]))
            //         ],
            //       ),
            //     )),
            //     Expanded(
            //         child: Container(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           SizedBox(
            //             width: size.width * .25,
            //             child: TextFormField(
            //               style: TextStyle(color: whiteColor),
            //               decoration: InputDecoration(
            //                   border: InputBorder.none,
            //                   hintText: 'Name',
            //                   hintStyle: TextStyle(color: whiteColor),
            //                   filled: true,
            //                   fillColor: Color(0xff1F2937)),
            //             ),
            //           ),
            //           const Gap(25),
            //           TextFormField(
            //             style: TextStyle(color: whiteColor),
            //             maxLines: 6,
            //             decoration: InputDecoration(
            //                 border: InputBorder.none,
            //                 hintText: 'Message',
            //                 hintStyle: TextStyle(color: whiteColor),
            //                 filled: true,
            //                 fillColor: Color(0xff1F2937)),
            //           ),
            //           const Gap(25),
            //           contactUs(context, () {})
            //         ],
            //       ),
            //     ))
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
