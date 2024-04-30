import 'dart:html';

import 'package:flutter/material.dart';

void scrollToSection(GlobalKey key) {
  Scrollable.ensureVisible(key.currentContext!,
      duration: Duration(seconds: 1), curve: Curves.easeInOut);
}

void downloadResume(String assetPath, String fileName) {
  String fullPath = 'assets/' + assetPath;

  // Fetch the PDF file as a byte data
  HttpRequest.request(fullPath, responseType: 'blob').then((request) {
    final anchor = AnchorElement(
        href: Url.createObjectUrlFromBlob(request.response as Blob))
      ..target = 'blank'
      ..download = fileName;
    document.body!.append(anchor);
    anchor.click();
    anchor.remove();
  });
}
