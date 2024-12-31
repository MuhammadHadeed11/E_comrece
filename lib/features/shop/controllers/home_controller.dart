import 'package:get/get.dart';
class HomeController extends GetxController{
  static HomeController get instance => Get.find();
  final casousalCurrentIndex =0.obs;
  void updatePageIndicator(index){
    casousalCurrentIndex.value=index;
  }
}