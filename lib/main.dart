import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sleepslip/app/ui/dashboard.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xff001932),
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SleepSlip',
      theme: ThemeData.dark(),
      home: Dashboard(),
    );
  }
}
