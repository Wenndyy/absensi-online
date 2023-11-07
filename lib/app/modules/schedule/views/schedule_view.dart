import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/schedule_controller.dart';

class ScheduleView extends GetView<ScheduleController> {
  ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ScheduleController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Schedule'),
      ),
      body: Column(
        children: [
          Obx(() {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      controller.decrementDate();
                    },
                  ),
                  Text(
                    "${controller.selectedDate.value.day}/${controller.selectedDate.value.month}/${controller.selectedDate.value.year}",
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      controller.incrementDate();
                    },
                  ),
                ],
              ),
            );
          }),
          Expanded(
            child: Obx(() {
              return ScheduleList(
                selectedDate: controller.selectedDate.value,
                schedule: [],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ScheduleList extends StatelessWidget {
  final List<String> schedule;
  final DateTime selectedDate;

  ScheduleList({required this.schedule, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    if (schedule.isEmpty) {
      // Tampilkan pesan bahwa tidak ada jadwal
      return Center(
        child: Text("Tidak ada jadwal untuk tanggal ini."),
      );
    } else {
      return ListView.builder(
        itemCount: schedule.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(schedule[index]),
          );
        },
      );
    }
  }
}
