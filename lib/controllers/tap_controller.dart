import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  void increaseX() {
    _x++;
    update();
  }

  void decrease() {
    _x--;
    update();
  }

  final RxInt _y = 0.obs;
  RxInt get y => _y;

  void increaseY() {
    _y.value++;
  }

  void decreaseY() {
    _y.value--;
  }

  final RxInt _z = 0.obs;
  int get z => _z.value;

  void totalXY() {
    _z.value = x + _y.value;
  }
}
