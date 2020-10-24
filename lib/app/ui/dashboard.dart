import 'package:flutter/material.dart';
import 'alarm_card.dart';
import 'package:sleepslip/app/repositories/get_alarm_time.dart';
import 'package:flutter/cupertino.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001932),
      appBar: AppBar(
        title: Center(child: Text('SleepSlip')),
        backgroundColor: Color(0xff001932),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Wake up times if you sleep now:'),
                  ),
                  AlarmCard(
                    color: Colors.purple[900],
                    time: GetAlarmTime().getTime(1),
                  ),
                  AlarmCard(
                    color: Colors.deepPurple[700],
                    time: GetAlarmTime().getTime(2),
                  ),
                  AlarmCard(
                    color: Colors.indigo[700],
                    time: GetAlarmTime().getTime(3),
                  ),
                  AlarmCard(
                    color: Colors.blue[800],
                    time: GetAlarmTime().getTime(4),
                  ),
                  AlarmCard(
                    color: Colors.blue[500],
                    time: GetAlarmTime().getTime(5),
                  ),
                  AlarmCard(
                    color: Colors.teal[400],
                    time: GetAlarmTime().getTime(6),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
