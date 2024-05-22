import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DateWidgets extends StatelessWidget {
  const DateWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime(2020, 1, 24);

    DateFormat dayFormat = DateFormat('d');
    DateFormat weekDayFormat = DateFormat('EEE');
    DateFormat monthYearFormat = DateFormat('MMM yyyy');

    String day = dayFormat.format(date);
    String weekDay = weekDayFormat.format(date);
    String monthYear = monthYearFormat.format(date);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          day,
          style: GoogleFonts.poppins(
            fontSize: 60,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weekDay,
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
            ),
            Text(
              monthYear,
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
