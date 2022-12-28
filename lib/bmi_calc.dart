import 'dart:math';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);
  @override
  State<BMI> createState() => _BMIState();
}
class _BMIState extends State<BMI> {
  @override
  void initState()
  {
    super.initState();
  }
  bool isMale = true;
  double h = 150;
  int age = 20;
  var w = 50;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('BMI Calculator' , style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body:Column(
        children:[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                        setState((){
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color:isMale? Colors.red : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const[
                            Image(
                                image:AssetImage(
                                    'images/M.jpg',
                                ),
                              width: 90.0,
                              height: 90.0,
                            ),
                             Text('Male' , style: TextStyle(fontSize: 40),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                        setState((){
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color:isMale?Colors.grey[400]:Colors.purpleAccent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const[
                            Image(image:AssetImage('images/F.png',),
                                width: 100,
                                height: 100,
                            ),
                            Text('Female' , style: TextStyle(fontSize: 40),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[400],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Text(
                      'Height',
                      style:TextStyle(
                          fontSize: 30,
                          fontWeight:FontWeight.bold
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children:[
                        Text(
                          '${h.round()}',
                          style:TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 50,
                          ) ,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                            'CM',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        activeColor: Colors.red,
                        inactiveColor: Colors.black,
                        thumbColor: Colors.white,
                        min:120.0,
                        max: 220.0,
                        value:h,
                        onChanged:(value){
                          setState((){
                            h = value;
                          });
                        }
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          const Text(
                              'Age',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height:10,
                          ),
                          Text(
                            '${age}',
                            style:TextStyle(
                                fontSize: 30,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:(){
                                  setState((){
                                    age++;
                                  });
                                },
                                backgroundColor: Colors.red,
                                mini: true,
                                child:const Icon(Icons.add),

                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState((){
                                    age--;
                                  });
                                },
                                backgroundColor: Colors.red,
                                mini: true,
                                child:const Icon(Icons.remove),

                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ), 
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[400]
                      ),
                      child: Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          const Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height:10,
                          ),
                          Text('${w}',
                            style:TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:(){
                                  setState((){
                                    w++;
                                  });
                                },
                                backgroundColor: Colors.red,
                                mini: true,
                                child:const Icon(Icons.add),

                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState((){
                                    w--;
                                  });
                                },
                                backgroundColor: Colors.red,
                                mini: true,
                                child:const Icon(Icons.remove),

                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
              
            
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child: MaterialButton(
              height: 55,
              onPressed:(){
                var result = w / pow(h/ 100,2);
                print(result.round());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=>Result(
                        result: result.round(),
                        isMale: isMale,
                        age: age,
                      )
                  ),
                );
              },
              child:const Text('Calculate',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}

