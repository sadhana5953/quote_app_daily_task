import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/home/uttils/quotes.dart';
import 'package:quote_app_daily_task/home/uttils/qutolist.dart';

QuoteModel? quoteModel;

class quotes extends StatefulWidget {
  const quotes({super.key});

  @override
  State<quotes> createState() => _quotesState();
}

class _quotesState extends State<quotes> {
  void initState() {
    quoteModel = QuoteModel.toList(quotesList);
    super.initState();
  }

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
        actions: [IconButton(onPressed: (){Navigator.of(context).pushNamed('/quote');}, icon: Icon(Icons.save,color: Colors.white,))],
       centerTitle: true,
        title: Text(
          'Quotes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 22),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(child: Column(children: List.generate(quoteModel!.qutemodelList.length, (index) => Card(
        child: ListTile(
          tileColor: colors[select()],
          title: Text(quoteModel!.qutemodelList[index].quote!),
          subtitle: Text(quoteModel!.qutemodelList[index].author!),
        ),
      ),),),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = Random();
          int x = random.nextInt(quoteModel!.qutemodelList.length);
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: colors[select()],
                title: Text(quoteModel!.qutemodelList[x].author!),
                content: Text(quoteModel!.qutemodelList[x].quote!),
                actions: [
                  TextButton(onPressed: () {
                    saveQuotes.add(QuoteModel(quote: quoteModel!.qutemodelList[x].author!,author: quoteModel!.qutemodelList[x].quote!));
                    Navigator.of(context).pop();
                  }, child: Text('Save')),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Back')),
                ],
              );
            },
          );
        },
        child: Icon(Icons.notification_add),
      ),
    );
  }
}
int ch = 0;
List colors = [
  Color(0xFFF9F276),
  Color(0xFFF08A80),
  Color(0xFFD6ADFA),
  Color(0xFFF5BC02),
  Color(0xFFCCFD8F),
  Color(0xFFFDFDFD),
  Color(0xFFCAEFF7)
];
