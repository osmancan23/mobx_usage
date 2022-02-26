import 'package:flutter/material.dart';
import 'package:mobx_usage/view/home/home_view.dart';

import 'view/gallery/gallery_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GalleryView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
