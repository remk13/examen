import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ImageController extends GetxController {
  int zoom = 125;
  double opacidad = 1.0;

  void zoomD() {
    zoom = zoom + 25;
    update();
  }

  void zoomP() {
    if (zoom > 25) {
      zoom = zoom - 25;
      update();
    }
  }

  void opacity() {
    if (opacidad > .2) {
      opacidad = opacidad - 0.1;
    }
    update();
  }

  void opacityR() {
    opacidad = .9;
    update();
  }
}
