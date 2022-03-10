import 'package:aplicacion/controller/image_controller.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion/pages/examen.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut<ImageController>(() => ImageController());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen: Manipulacion de imagen',
      home: Examen(),
    );
  }
}
