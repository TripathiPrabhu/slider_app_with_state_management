import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  double myValue = 1.0;
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         body: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Slider(value: myValue,
                 onChanged: (val){
               setState(() {
                 myValue = val;
                 print(val);
               });
                 }),
             Row(
               children: [
                 Container(
                   height: 50,
                   width:200 ,
                   color: Colors.green.withOpacity(myValue),
                 ),
                 Container(
                   height: 50,
                   width:200 ,
                   color: Colors.red.withOpacity(myValue),
                 ),
               ],
             )
           ],
         ),
       ),
     );
   }
 }
