import 'package:get/get.dart';

import '../controllers/qrscanner_controller.dart';

class QrscannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrscannerController>(
      () => QrscannerController(),
    );
  }
}
