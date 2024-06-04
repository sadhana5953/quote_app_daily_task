import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/home/uttils/flower%20list.dart';

class toggle extends StatefulWidget {
  const toggle({super.key});

  @override
  State<toggle> createState() => _toggleState();
}

class _toggleState extends State<toggle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F2F2F),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  change = !change;
                });
              },
              icon: Icon(
                (change == true) ? Icons.list_alt : Icons.grid_view,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        backgroundColor: Color(0xFF424242),
        title: Text(
          'Toggle View Example',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: (change == true)
          ? Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFF303030),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white30, width: 2),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white54, blurRadius: 2, spreadRadius: 1)
                  ]),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 8 / 8),
                itemCount: flower.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                      tileColor: Color(0xFF303030),
                      title: Container(
                        height: 120,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 8, bottom: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(flower[index]['image']),
                              fit: BoxFit.cover),
                        ),
                      ),
                      subtitle: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: ' ${flower[index]['name']}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: '\n 0${index + 1}-Jan-2023',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13)),
                      ]))),
                ),
              ),
            )
          : Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFF303030),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white30, width: 2),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white54, blurRadius: 2, spreadRadius: 1)
                  ]),
              child: ListView.builder(
                itemCount: flower.length,
                itemBuilder: (context, index) => ListTile(
                  title: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 120,
                        margin: EdgeInsets.only(left: 8, bottom: 6, top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(flower[index]['image']),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: flower[index]['name'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: '\n0${index + 1}-Jan-2023',
                            style:
                                TextStyle(color: Colors.white, fontSize: 17)),
                      ]))
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

bool change = true;
