import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
int counter=0;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Stateful')),),
        body: Column(
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  print('Please Click ');
                  // counter= counter + 1 ;
                  counter ++ ;
                  print('My Click No: $counter');
                });
              },
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
                  // height: 120.0,
                  // width: 120.0,
                  child: Text(counter.toString(),
                    style: TextStyle(
                      fontSize: 50.0,
                      // color: Colors.white,
                    ),
                  ),
                  // color: Colors.orange,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                print('Please Click ');
                // counter= counter + 1 ;
                counter ++ ;
                print('My Click No: $counter');
              });
            },
            child: Icon(Icons.add),
        ),
      ),
    );
  }
}