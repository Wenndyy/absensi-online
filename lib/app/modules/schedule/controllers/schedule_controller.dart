import 'package:get/get.dart';

class ScheduleController extends GetxController {
  final selectedDate = DateTime.now().obs;
  final schedule = <String>[].obs; // Jadwal, defaultnya list kosong

  void incrementDate() {
    selectedDate.value = selectedDate.value.add(Duration(days: 1));
    // Anda dapat mengisi ulang jadwal untuk tanggal yang baru di sini
  }

  void decrementDate() {
    selectedDate.value = selectedDate.value.subtract(Duration(days: 1));
    // Anda dapat mengisi ulang jadwal untuk tanggal yang baru di sini
  }
}
