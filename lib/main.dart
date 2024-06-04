import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/home/Toggle%20View/toggle.dart';
import 'package:quote_app_daily_task/home/dialog%20box/dialog_box.dart';
import 'package:quote_app_daily_task/home/quote/Quote.dart';
import 'package:quote_app_daily_task/home/quote/Quotes.dart';
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
        '/':(context) => toggle(),
        '/toggle':(context) => toggle(),
        '/quotes':(context) => quotes(),
        '/quote':(context) => quote(),
        '/dialog_box':(context) => DialogueBox1()
      },
    );
  }
}
