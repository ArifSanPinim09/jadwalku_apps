// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonAddWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonAddWidget({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 145.0,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff2DD8FE),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            const Icon(Icons.add, color: Colors.white),
            const SizedBox(width: 8.0),
            Text(
              'Add Task',
              style: GoogleFonts.poppins(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
