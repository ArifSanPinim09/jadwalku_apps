import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jadwalku_apps/screens/add_task/add_task_screen.dart';
import 'package:jadwalku_apps/screens/home/widget/button_widget.dart';
import 'package:jadwalku_apps/screens/home/widget/date_widget.dart';
import 'package:jadwalku_apps/screens/home/widget/time_lane_widget.dart';
import 'package:jadwalku_apps/services/local_services/notification_service.dart';
import 'package:jadwalku_apps/services/local_services/theme_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var notifyHelper;
  @override
  void initState() {
    notifyHelper = NotificationHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Get.isDarkMode ? context.theme.colorScheme.background : Colors.white,
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DateWidgets(),
                ButtonAddWidget(
                  onPressed: () {
                    Get.to(const AddTaskScreen());
                  },
                )
              ],
            ),
            const TimeLaneWidget()
          ],
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor:
          Get.isDarkMode ? context.theme.colorScheme.background : Colors.white,
      leading: GestureDetector(
        onTap: () async {
          ThemeService().switchTheme();
          // DateTime scheduledTime =
          //     DateTime.now().add(const Duration(seconds: 5));
          // await NotificationHelper.displayNotification(
          //   id: 0,
          //   title: Get.isDarkMode ? 'Dark Mode' : 'Light Mode',
          //   body: Get.isDarkMode
          //       ? "Tema Berhasil Diubah Ke Terang"
          //       : "Tema Berubah Ke Gelap",
          // );
        },
        child: Icon(
          Get.isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {},
        )
      ],
    );
  }
}
