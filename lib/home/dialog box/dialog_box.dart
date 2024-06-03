import 'package:flutter/material.dart';

class DialogueBox1 extends StatefulWidget {
  const DialogueBox1({super.key});

  @override
  State<DialogueBox1> createState() => _DialogueBox1State();
}

class _DialogueBox1State extends State<DialogueBox1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Box Example',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Massage'),
                        content: Text('This is a dialog box',style: TextStyle(fontSize: 18),),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'))
                        ],
                      );
                    },
                  );
                },
                child: Text('Show Dialog Box')),
            OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        insetPadding: EdgeInsets.zero,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('This is a fullscreen dialog box',style: TextStyle(fontSize: 20),),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'))
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text('Show Fullscreen Dialog Box')),
          ],
        ),
      ),
    );
  }
}
