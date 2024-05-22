// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFormFieldWidget extends StatelessWidget {
  final String lable;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  const MyTextFormFieldWidget({
    super.key,
    required this.lable,
    required this.hint,
    this.controller,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: GoogleFonts.poppins(
                fontSize: 15.0, fontWeight: FontWeight.w400),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 52.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    readOnly: widget == null ? false : true,
                    controller: controller,
                    autofocus: false,
                    cursorColor:
                        Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(),
                      hintText: hint,
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                widget == null ? Container() : Container(child: widget)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
