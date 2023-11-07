import 'package:absensionline/app/modules/widgets/card_announce.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/announcement_controller.dart';

class AnnouncementView extends GetView<AnnouncementController> {
  const AnnouncementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemberitahuan'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                CardAnnounce(),
                CardAnnounce(),
                CardAnnounce(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
