import 'package:flutter/material.dart';

import 'custom_radio.dart';

class DaysOfWeek extends StatefulWidget {
  const DaysOfWeek({Key? key}) : super(key: key);

  @override
  State<DaysOfWeek> createState() => _DaysOfWeekState();
}

class _DaysOfWeekState extends State<DaysOfWeek> {
  String? groupValue;
  String? value;

  bool get _selected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Days of the Week",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRadio<String>(
                text: 'Monday',
                value: 'Monday',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomRadio<String>(
                text: 'Tuesday',
                value: 'Tuesday',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomRadio<String>(
                text: 'Wednesday',
                value: 'Wednesday',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomRadio<String>(
                text: 'Thursday',
                value: 'Thursday',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomRadio<String>(
                text: 'Friday',
                value: 'Friday',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomRadio<String>(
                text: 'Saturday',
                value: 'Saturday',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomRadio<String>(
                text: 'Sunday',
                value: 'Sunday',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
