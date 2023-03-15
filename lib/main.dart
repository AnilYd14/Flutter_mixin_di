import 'package:di_mixin_extension_demo/di_usage_page.dart';
import 'package:di_mixin_extension_demo/employee.dart';
import 'package:di_mixin_extension_demo/motorbike.dart';
import 'package:flutter/material.dart';

import 'di/locator.dart';

void main()  {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MotorBike mtrBike = MotorBike();
    return MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Container(color: Colors.white, child: Center(child: Column(
          children: [
            Text(mtrBike.handleControl()),
            SizedBox(height: 10),
            Text(Employee().gender),
            Text(Employee().name),
            Text(Employee().age),
            Builder(
              builder: (context) {
                return ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DIUsagePage()));

                }, child: Text('DI Conccept'));
              }
            )
          ],
        ))),
      ),
    );
  }
}
