import 'package:get/get.dart';

class Example2 extends GetxController {
  RxDouble opacity = .4.obs;

  RxDouble radius = 0.0.obs;

  setOpacity(double value){
    opacity.value = value;
  }

  setRadius(double valuer){
    radius.value = valuer;
  }
}