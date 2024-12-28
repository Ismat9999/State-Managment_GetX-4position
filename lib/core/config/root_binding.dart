
import 'package:get/get.dart';
import 'package:smgetx1lesson/presantion/controllers/home_controller.dart';

class RootBinnding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController(),fenix:  true);
  }
}