import 'package:flutter/material.dart';
import 'package:aplicacion/controller/image_controller.dart';
import 'package:get/get.dart';

class Examen extends StatelessWidget {
  Examen({Key? key}) : super(key: key);

  final imagen = Get.find<ImageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Manipulacion de imagen'),
          backgroundColor: Colors.red),
      body: Center(
        child: GetBuilder<ImageController>(
          builder: (imageController) {
            return Opacity(
                opacity: imageController.opacidad,
                child: Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'http://assets.stickpng.com/images/580b57fcd9996e24bc43c325.png'),
                    backgroundColor: Colors.red,
                    radius: imageController.zoom.toDouble(),
                  ),
                ));
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => imagen.zoomP(),
            child: const Icon(Icons.zoom_out),
            backgroundColor: Colors.red,
          ),
          FloatingActionButton(
            onPressed: () => imagen.zoomD(),
            child: const Icon(Icons.zoom_in),
            backgroundColor: Colors.red,
          ),
          FloatingActionButton(
            onPressed: () => imagen.opacity(),
            child: const Icon(Icons.opacity),
            backgroundColor: Colors.red,
          ),
          FloatingActionButton(
            onPressed: () => imagen.opacityR(),
            child: const Icon(Icons.restart_alt),
            backgroundColor: Colors.red,
          )
        ],
      ),
    );
  }
}
