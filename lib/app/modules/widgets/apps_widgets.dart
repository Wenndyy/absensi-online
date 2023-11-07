import 'package:absensionline/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AppsWidgets extends StatelessWidget {
  const AppsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.QRSCANNER);
      },
      child: Container(
        width: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.qr_code_scanner_sharp,
              size: 50,
            ),
            Text(
              'Presensi Mahasiswa',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
