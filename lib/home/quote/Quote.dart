import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/home/uttils/qutolist.dart';

import '../uttils/quotes.dart';
class quote extends StatefulWidget {
  const quote({super.key});

  @override
  State<quote> createState() => _quoteState();
}

class _quoteState extends State<quote> {

  int select() {
    if (ch == 7) {
      ch = 0;
    }
    return ch++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),),
        title: Text(
          'Saved Quotes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(child: Column(children: List.generate(saveQuotes.length, (index) => Card(
        child: ListTile(
          tileColor: colors[select()],
          title: Text('${saveQuotes[index].author}'),
          subtitle: Text('${saveQuotes[index].quote}'),
        //  subtitle: Text(saveQuotes[index]['quote']),
        ),
      ),),),),
    );
  }
}
int ch=0;
List colors = [
  Color(0xFFF9F276),
  Color(0xFFF08A80),
  Color(0xFFD6ADFA),
  Color(0xFFF5BC02),
  Color(0xFFCCFD8F),
  Color(0xFFFDFDFD),
  Color(0xFFCAEFF7)
];