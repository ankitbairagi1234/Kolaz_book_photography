// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:kolazz_book/Utils/colors.dart';
import 'package:table_calendar/table_calendar.dart';


class TableBasicsExample extends StatefulWidget {
  const TableBasicsExample({super.key});

  @override
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgruond,
      appBar: AppBar(

        // leading: Icon(Icons.arrow_back_ios, color: Color(0xff1E90FF)),
        backgroundColor: Color(0xff303030),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(child: Text("Calender",
                style: TextStyle(fontSize: 16, color:Color(0xff1E90FF), fontWeight: FontWeight.bold)
            ),
            ),
          ),
        ],
      ),
      body: TableCalendar(
        firstDay: DateTime.now(),
        lastDay: DateTime.now(),
        focusedDay: _focusedDay,
        onDayLongPressed:  (selectedDay, focusedDay) {

        },
        daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle: TextStyle(color: AppColors.textclr)),
        // calendarStyle: CalendarStyle(selectedDecoration: BoxDecoration()),
        calendarFormat: _calendarFormat,
        selectedDayPredicate: (day) {

          return false;
          // Use `selectedDayPredicate` to determine which day is currently selected.
          // If this returns true, then `day` will be marked as selected.

          // Using `isSameDay` is recommended to disregard
          // the time-part of compared DateTime objects.
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            // Call `setState()` when updating the selected day
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }

        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            // Call `setState()` when updating calendar format
            setState(() {
              _calendarFormat = format;
            });
          }
        },
        onPageChanged: (focusedDay) {
          // No need to call `setState()` here
          _focusedDay = focusedDay;
        },
      ),
    );
  }

}