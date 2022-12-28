import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  var result;
  bool? isMale;
  int? age;
  Result(
  {required this.result,
  this.isMale,
      this.age,}
      )
  {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Gender :${isMale!? 'Male' : 'Female'}' ,
              style:const TextStyle(fontSize: 30 ,
                  fontWeight: FontWeight.bold),
            ),
            Text('Result :$result' ,
              style:const TextStyle(fontSize: 30 ,
                  fontWeight: FontWeight.bold),
            ),
            Text('Age : $age',
              style:const TextStyle(fontSize: 30 ,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
