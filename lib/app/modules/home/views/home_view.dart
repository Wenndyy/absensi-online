import 'package:absensionline/app/modules/widgets/apps_widgets.dart';
import 'package:absensionline/app/modules/widgets/card_widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Malam',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Wendy Noer Isnaeni',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  minRadius: 35,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Jadwal Kuliah Hari Ini',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardWidgets(
                    namaMatkul: 'STRUKTUR DATA',
                    kodeMatkul: 'CII2B4',
                    jamMatkul: '06.30 - 09.30',
                    kodeDosen: 'FSV',
                    Ruangan: 'LAB 0604',
                    status: 'Sedang Berlangsung',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CardWidgets(
                    namaMatkul: 'STRUKTUR DATA',
                    kodeMatkul: 'CII2B4',
                    jamMatkul: '06.30 - 09.30',
                    kodeDosen: 'FSV',
                    Ruangan: 'LAB 0604',
                    status: 'Sedang Berlangsung',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CardWidgets(
                    namaMatkul: 'STRUKTUR DATA',
                    kodeMatkul: 'CII2B4',
                    jamMatkul: '06.30 - 09.30',
                    kodeDosen: 'FSV',
                    Ruangan: 'LAB 0604',
                    status: 'Sedang Berlangsung',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Apps',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                AppsWidgets(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
