import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeLaneWidget extends StatefulWidget {
  const TimeLaneWidget({super.key});

  @override
  State<TimeLaneWidget> createState() => _TimeLaneWidgetState();
}

class _TimeLaneWidgetState extends State<TimeLaneWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DatePicker(
          height: MediaQuery.sizeOf(context).height * 0.12,
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: const Color(0xff2DD8FE),
          selectedTextColor: Colors.white,
          dateTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 22.0,
          ),
          dayTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 10.0,
          ),
          monthTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 10.0,
          ),
          onDateChange: (date) {
            // New date selected
            setState(
              () {},
            );
          },
        ),
      ],
    );
  }
}
