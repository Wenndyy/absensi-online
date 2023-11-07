import 'package:absensionline/app/modules/announcement/views/announcement_view.dart';
import 'package:absensionline/app/modules/home/views/home_view.dart';
import 'package:absensionline/app/modules/schedule/views/schedule_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index:
                controller.selectedIndex.value, // Gunakan nilai selectedIndex
            children: [
              HomeView(),
              ScheduleView(),
              AnnouncementView(),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            controller.selectedIndex.value, // Gunakan nilai selectedIndex
        onTap: (int index) {
          controller.updateSelectedIndex(
              index); // Perbarui selectedIndex melalui controller
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule_outlined),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Pemberitahuan',
          ),
        ],
      ),
    );
  }
}
