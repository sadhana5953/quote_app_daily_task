# Quote App Daily Task :

# Types of Alert Dialogue & SizedBox.expand()
<img src="https://github.com/sadhana5953/quote_app_daily_task/assets/148869257/d0730b92-c999-4f26-a4e6-27f7ee9b4f63" height=22% width=35%>
<img src="https://github.com/sadhana5953/quote_app_daily_task/assets/148869257/cfb4f566-2cba-4e57-b30e-bfb94a0d5261" height=22% width=35%>
<img src="https://github.com/sadhana5953/quote_app_daily_task/assets/148869257/37a27ff1-19be-491b-b481-e2e6dd2c0ebf" height=22% width=35%>

https://github.com/sadhana5953/quote_app_daily_task/assets/148869257/319acdd3-d010-4478-a402-830c34e89d33

# Random Quotes Generator 
<img src="https://github.com/sadhana5953/quote_app_daily_task/assets/148869257/96c466c4-2332-48ae-9744-acc90ea76813" height=22% width=35%>
<img src="https://github.com/sadhana5953/quote_app_daily_task/assets/148869257/801fdd84-3bdb-43e9-a4e6-21a11ce0961e" height=22% width=35%>

# Factory Constructor & Modal Class.
## Write a detailed implementation of the Factory constructor :
=>  Factory constructors provide the flexibility to return   instances of   subclasses instead of the class itself.

=> This allows for dynamic object creation based on specific conditions. 

=> This flexibility allows developers to control the object creation process more precisely.

### Advantages
* A factory constructor can ensure that only one instance of a class is created (singleton pattern). This is useful for classes where multiple instances are not desired.

* Factory constructors can manage a pool of instances, reusing existing instances instead of creating new ones, which can save memory and processing time.

* A factory constructor can return instances of different subclasses based on the input parameters or internal logic, providing flexibility in object creation.

* Factory constructors can make it easier to create mock objects for testing purposes, as the creation logic is centralized and can be overridden or modified in test environments.

### Disadvantages
* Factory constructors can introduce additional complexity to the codebase. Developers need to understand when and how to use them effectively, which can increase the learning curve for new developers.

* The logic inside a factory constructor can add some performance overhead, especially if it involves complex condition checks, object caching, or lazy initialization.

* Factory constructors prevent direct instantiation of objects using the new keyword (or its equivalent), which might be counter-intuitive for developers who expect a more straightforward object creation process.

### Example:
``` bash

import 'dart:io';
import 'student.dart';

class Student {
  late String name;
  late int grid;
  Student({required this.name, required this.grid});

  List<Student> student = [];
}

List studentList = [
  {'name': ' Ashwini ','grid':'1012' },
  {'name': ' Akshita ','grid':'1031' },
  {'name': ' Sadhana ','grid':'5958' },
  {'name': ' Rajeshree ', 'grid':'5912'},
  {'name': ' Rani ','grid':'1055' },
];
List<StudentsModel> l1 = [];

void main() {
  for (int i = 0; i < studentList.length; i++) {
    StudentsModel s1 = StudentsModel.fromstudent(student: studentList[i]);
    l1.add(s1);
  }
  for (int i = 0; i < l1.length; i++) {
    print("\n");
    stdout.write('name : ${l1[i].name}' +
        ',grid: ${l1[i].grid},' );
  }
}

// page2

import 'dart:io';
import 'stu.dart';

class StudentsModel {
  String? name;
  int? grid;

  StudentsModel(
      {required this.name, required this.grid});

  factory StudentsModel.fromstudent({required Map student}) {
    return StudentsModel(
        name: student['name'],grid: student['grid']);

  }
  
}
````
## Write a detailed implementation of the Modal class :
=> A model class serves as a blueprint for creating objects that represent the data structure of your application.
### Example:
``` bash
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  void _clearText(int index) {
    controllerList[index].txtProName!.clear();
    controllerList[index].txtProCategory!.clear();
    controllerList[index].txtProPrice!.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            controllerList.length,
            (index) => Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: buildColumn(
                  product: index,
                  controller1: controllerList[index].txtProName!,
                  controller2: controllerList[index].txtProCategory!,
                  controller3: controllerList[index].txtProPrice!),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            TextEditingController txtProName = TextEditingController();
            TextEditingController txtProCategory = TextEditingController();
            TextEditingController txtProPrice = TextEditingController();
            controllerList.add(controllerModel(
                txtProName: txtProName,
                txtProPrice: txtProPrice,
                txtProCategory: txtProCategory));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Column buildColumn(
      {required int product,
      required TextEditingController controller1,
      required TextEditingController controller2,
      required TextEditingController controller3}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Product ${product + 1}',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (product == 0) {
                      _clearText(product);
                    } else {
                      controllerList.removeAt(product);
                    }
                  });
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ))
          ],
        ),
        TextFormField(
          controller: controller1,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(3)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(3)),
              hintText: 'Enter Producat Name',
              hintStyle: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}

class controllerModel {
  TextEditingController? txtProName;
  TextEditingController? txtProCategory;
  TextEditingController? txtProPrice;

  controllerModel({this.txtProCategory, this.txtProName, this.txtProPrice});
}

List<controllerModel> controllerList = [
  controllerModel(
      txtProCategory: txtProCategory,
      txtProName: txtProName,
      txtProPrice: txtProPrice),
];

TextEditingController txtProName = TextEditingController();
TextEditingController txtProCategory = TextEditingController();
TextEditingController txtProPrice = TextEditingController();

class InvoiceModel {
  String? name;
  String? category;
  String? price;

  InvoiceModel({this.name, this.price, this.category});
}
````
