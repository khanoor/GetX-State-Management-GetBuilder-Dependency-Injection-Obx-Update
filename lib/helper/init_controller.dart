import 'package:get/get.dart';
import 'package:getx2/controllers/list_controller.dart';

import '../controllers/tap_controller.dart';

Future<void> init() async{
  
    Get.lazyPut(()=> TapController());
    Get.lazyPut(()=> ListController());
}