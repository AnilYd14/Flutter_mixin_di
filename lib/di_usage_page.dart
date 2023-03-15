

import 'package:di_mixin_extension_demo/data_repo.dart';
import 'package:di_mixin_extension_demo/di/locator.dart';
import 'package:flutter/material.dart';
class DIUsagePage extends StatefulWidget {

   DIUsagePage({Key? key}) : super(key: key);

  @override
  State<DIUsagePage> createState() => _DIUsagePageState();
}

class _DIUsagePageState extends State<DIUsagePage> {
   String dummyData='';
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("DI"),),
        body:  Container(padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(dummyData),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                String text =  locator.get<DataRepo>().showDummyData();
                debugPrint(text);
                setState(() {
                  dummyData = text;
                });

              }, child: Text('Press Me To Data Using DI')),
              SizedBox(height: 20,),
              Text('Male'.toMale()),
              SizedBox(height: 20,),
              Text('Female'.toFemale()),
              SizedBox(height: 20,),
              Text('Others'.toOthers())

            ],
          ),
        ),
      ),
    );
  }
}

extension ChangeMale on String{
  String toMale(){
    return "M";
  }
}

extension ChangeFemale on String{
  String toFemale(){
    return "F";
  }
}
extension ChangeOther on String{
  String toOthers(){
    return "O";
  }
}

