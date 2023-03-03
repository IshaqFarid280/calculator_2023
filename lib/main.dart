import 'package:calculator_2023/btn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:  MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late String operand = '';
  late String operator = '' ;
  late String minus = '-';
  late String multiply = 'x';
  late String plus = '+';
  late String divide = '/';
  late String firstoperand;
  late String secondoperand;





void switchFunction (){
  switch(operand){
    case '+': {
     firstoperand =  int.parse(operand).toString() + int.parse(operand).toString();
    }
  }
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Text(operator.toString() + operand.toString(), style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                ),),
                margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height*0.115,
                  width: MediaQuery.of(context).size.width*1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white24,

                ),
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Button(onTap: (){
                            setState((){
                              operand = '7$operand';
                            });
                          }, btntext: '7'),
                          Button(onTap: (){
                            setState((){
                              operand = '8$operand';
                            });
                          }, btntext: '8'),
                          Button(onTap: (){
                            setState((){
                              operand = '9$operand' ;
                            });
                          }, btntext: '9'),
                        ],
                      ),
                      Row(
                        children: [
                          Button(onTap: (){}, btntext: '4'),
                          Button(onTap: (){}, btntext: '5'),
                          Button(onTap: (){}, btntext: '6'),
                        ],
                      ),
                      Row(
                        children: [
                          Button(onTap: (){}, btntext: '1'),
                          Button(onTap: (){}, btntext: '2'),
                          Button(onTap: (){}, btntext: '3'),
                        ],
                      ),
                      Row(
                        children: [
                          Button(onTap: (){}, btntext: '%'),
                          Button(onTap: (){}, btntext: '0'),
                          Button(onTap: (){}, btntext: '.'),
                        ],
                      ),

                    ],
                  ),
                  Column(
                    children: [
                      Button(onTap: (){
                        setState((){
                          minus  = '-';

                        });
                      }, btntext: '-'),
                      Button(onTap: (){
                        setState((){
                          plus = '+' ;
                        });
                      }, btntext: '+'),
                      // Button(onTap: (){}, btntext: '='),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          child:const Center(
                            child: Text('=', style: TextStyle(
                              fontSize: 50,
                              color: Colors.white
                            ),),
                          ),
                          margin: EdgeInsets.all(5),
                          height: MediaQuery.of(context).size.height*0.25,
                          width: MediaQuery.of(context).size.width*0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,

                          ),

                        ),
                      )
                    ],
                  )
                ],
              ),

            ],
          ),
        ),

      ),
    );
  }
}

