// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: MyButton(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

// class MyButton extends StatefulWidget {
//   @override
//   MyButtonState createState() {
//     return MyButtonState();
//   }
// }

// class MyButtonState extends State<MyButton> {
//   int counter = 0;
//   List<String> spanishNumber = [
//     'uno',
//     'dos',
//     'tres',
//     'cinco',
//     'seis',
//     'seite',
//     'ocho',
//     'nueve',
//     'dietz'
//   ];
//   List<String> englishNumber = [
//     'one',
//     'two',
//     'three',
//     'four',
//     'five',
//     'six',
//     'seven',
//     'eight',
//     'nine'
//   ];

//   String defaultText = 'Spanish Number';
//   String defaultText2 = 'English Number';
//   String defaultText3 = '0';

//   void displaySnumbers() {
//     setState(() {
//       defaultText = spanishNumber[counter];
//       defaultText2 = englishNumber[counter];
//       defaultText3 = (counter + 1).toString();

//       if (counter < 8) {
//         counter++;
//       } else {
//         counter = 0;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My stateful app'),
//         backgroundColor: Colors.orange,
//       ),
//       body:Center(
//         child: Container(
//           height: 300,
//           width: 300,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   defaultText,
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 Text(
//                   defaultText2,
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 Text(
//                   defaultText3,
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 Padding(padding: EdgeInsets.all(8.0)),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text('Call Number'),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.orange,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: displaySnumbers,
//         child: Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
//     );
//   }
// }