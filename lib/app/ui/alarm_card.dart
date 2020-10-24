import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sleepslip/app/repositories/get_alarm_time.dart';

class AlarmCard extends StatelessWidget {
  AlarmCard({@required this.color, @required this.time});

  final Color color;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 5.0,
            bottom: 6.0,
          ),
          child: GestureDetector(
            onTap: GetAlarmTime()
                .refreshAlarms(), //TODO fix ontap too enable alarm
            child: Card(
              color: color,
              child: Padding(
                padding: const EdgeInsets.all(
                    28), //TODO make scalable to phone screen size
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(time,
                        style: TextStyle(fontSize: 40, fontFamily: 'Lato'))
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
