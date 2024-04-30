import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';

Widget contactUs(context, void Function()? onPressed) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: yellow),
      onPressed: onPressed,
      child: Text(
        'Contact Us',
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .merge(TextStyle(color: blackColor,fontWeight: FontWeight.w800)),
      ));
}
