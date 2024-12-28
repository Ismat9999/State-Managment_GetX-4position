
import 'package:get/get.dart';

import '../../presantion/controllers/main_controller.dart';
import '../../presantion/controllers/splash_controller.dart';

class DIService{
  static Future<void>init()async{
    Get.lazyPut<SplashController>(()=> SplashController(), fenix: true);
    Get.lazyPut<MainController>(()=> MainController(), fenix: true);
  }
}