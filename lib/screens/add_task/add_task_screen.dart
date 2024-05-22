import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:jadwalku_apps/screens/add_task/widget/input_field_widget.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  DateTime _selectedDate = DateTime.now();
  final String _endTime = DateFormat("hh:mm a").format(DateTime.now());
  String _startTime = DateFormat("hh:mm a").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Get.isDarkMode ? context.theme.colorScheme.background : Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Get.isDarkMode
            ? context.theme.colorScheme.background
            : Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Task",
              style: GoogleFonts.poppins(
                fontSize: 23.0,
              ),
            ),
            const MyTextFormFieldWidget(
              lable: 'Task Name',
              hint: "Enter title here.",
            ),
            const MyTextFormFieldWidget(
              lable: 'Note',
              hint: "Enter note here",
            ),
            MyTextFormFieldWidget(
              lable: 'Date',
              hint: DateFormat.yMd().format(_selectedDate),
              widget: IconButton(
                color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                icon: const Icon(Icons.calendar_today_outlined),
                onPressed: () {},
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MyTextFormFieldWidget(
                    lable: 'Start Time',
                    hint: _startTime,
                    widget: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.access_time),
                      color:
                          Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                Expanded(
                  child: MyTextFormFieldWidget(
                    lable: 'End Time',
                    hint: _endTime,
                    widget: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.access_time),
                      color:
                          Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  getDateUser() async {
    DateTime? pickerDate = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (pickerDate != null) {
      setState(() {
        _selectedDate = pickerDate;
      });
    } else {
      print("it's null or something is wrong");
    }
  }

  _getTimeFromUser({required bool isStartTime}) {
    var pickedTime = showTimePicker();
    String formatedTime = pickedTime.format(context);
    if (pickedTime == null) {
      print("Time canceled");
    } else if (isStartTime == true) {
      _startTime = formatedTime;
    }
  }

  showTimePicker() {
    return showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 9, minute: 30),
    );
  }
}
