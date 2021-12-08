import 'package:comcom/page/home/ui/controller/web_home_controller.dart';
import 'package:get/get.dart';

class WebHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WebHomeController());
  }
}
