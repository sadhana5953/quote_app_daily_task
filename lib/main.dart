import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/home/dialog%20box/dialog_box.dart';
void main()
{
  return runApp(MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => DialogueBox1()
      },
    );
  }
}
