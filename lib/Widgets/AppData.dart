import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AppData extends StatelessWidget {
  final Function choose_a_date;
  final DateTime fixedDate;
  final Function() lastDay;
  final Function() nextDay;
  AppData(this.choose_a_date, this.fixedDate, this.lastDay, this.nextDay);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: lastDay,
          icon: Icon(
            Icons.arrow_left,
            size: 35,
          ),
        ),
        TextButton(
            onPressed: () {
              choose_a_date(context);
            },
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontSize: 20,
                        color: (Colors.black),
                        fontFamily: GoogleFonts.montserrat().fontFamily),
                    children: [
                  TextSpan(
                    text: "${DateFormat.EEEE().format(fixedDate)}, ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "${DateFormat(" d MMM").format(fixedDate)}",
                  )
                ]))),
        IconButton(
          onPressed: nextDay,
          icon: Icon(
            Icons.arrow_right,
            size: 35,
          ),
        ),
      ],
    );
  }
}
