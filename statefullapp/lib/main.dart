import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyButton(),
  ));
}


//statefull manei holo akhne jei state wala class ta thakbe setake ei class er maje call krte hbe
class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

//this class is maintain all the state , pura app joto state like all the variable ,value gone be change inside this class
class MyButtonState extends State<MyButton> {
  int counter = 0;

  List<String> spnaisNumber = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'seis',
    'siete',
    'ocho',
    'nueve',
    'dietz'
  ];

  List<String> EnglishNumber = [
    'ONE',
    'TWO',
    'THREE',
    'FOUR',
    'FIVE',
    'SIX',
    'SEVEN',
    'EIGHT',
    'NINE',
    'TEN'
  ];

  String defalulText = 'Spanish Number';
  String defalulText2 = 'English Number';
  String defalulText3 = '0';

  void displayAllNumber() {
    setState(() {
      defalulText = spnaisNumber[counter];
      defalulText2 = EnglishNumber[counter];
      defalulText3 = (counter + 1).toString();

      if (counter < 9) {
        counter++;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My statefull app'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                defalulText,
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.w500),
              ),
              Text(
                defalulText2,
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.w500),
              ),
              Text(
                defalulText3,
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.w500),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: displayAllNumber,
                child: Text('Click Me'),
                style: ElevatedButton.styleFrom(primary: Colors.orange),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: displayAllNumber,
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}


/// ex /////
// class MyPage extends StatefulWidget {
//   @override
//   MyPageState createState() {
//     return MyPageState();
//   }
// }

// class MyPageState extends State<MyPage> {
//   int a = 0;

//   increment() {
//     setState(() {
//       a++;
//     });
//   }

//   decrement() {
//     setState(() {
//       a--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(a.toString()),
//           ElevatedButton(onPressed: increment, child: Text('increase')),
//           ElevatedButton(onPressed: decrement,
//               child: Text('decrease')),
//         ],
//       )),
//     );
//   }
// }
