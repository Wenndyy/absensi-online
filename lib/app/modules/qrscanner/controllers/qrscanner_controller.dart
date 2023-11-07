import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrscannerController extends GetxController {
  QRViewController? _qrController;
  @override
  void dispose() {
    _qrController?.dispose();
    super.dispose();
  }
}
