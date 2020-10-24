import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sleepslip/app/repositories/get_alarm_time.dart';
import 'package:sleepslip/app/ui/dashboard.dart';

class AlarmCard extends StatelessWidget {
  AlarmCard({@required this.color, @required this.time});

  final Color color;
  final String time;

  @override
  Widget build(BuildContext context) {
    double getHeight() => MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 5.0,
            bottom: 3.0,
          ),
          child: GestureDetector(
            onTap:
                GetAlarmTime().refreshAlarms(), //TODO fix ontap to enable alarm
            child: Card(
              color: color,
              child: Padding(
                padding: EdgeInsets.all(getHeight() * .03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(time,
                        style: TextStyle(
                            fontSize: getHeight() * .05, fontFamily: 'Lato'))
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
