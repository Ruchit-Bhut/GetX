import 'package:get/get.dart';

class Example3 extends GetxController {
  RxBool  notification = false.obs;

  setNotification(bool value){
    notification.value = value;
  }
}

class FavouriteController extends GetxController{
  RxList<String> macosVersion = [
    'Cheetah',
    'Puma',
    'Jaguar',
    'Panther',
    'Tiger',
    'Leopard',
    'Snow Leopard',
    'Lion',
    'Mountain Lion',
    'Mavericks',
    'Yosemite',
    'El Capitan',
    'Sierra',
    'High Sierra',
    'Mojave',
    'Catalina',
    'Big Sur',
    'Monterey',
    'Ventura',
    'Sonoma',
  ].obs;

  RxList favOs = [].obs;

  addToFavourite(String value){
    favOs.add(value);
  }

  removeFromFavourite(String value){
    favOs.remove(value);
  }
}