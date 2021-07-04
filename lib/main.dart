import 'package:flutter/material.dart';

void main() {
  runApp(FirstCounter());
}

class FirstCounter extends StatefulWidget {
  const FirstCounter({Key? key}) : super(key: key);

  @override
  _FirstCounterState createState() => _FirstCounterState();
}

class _FirstCounterState extends State<FirstCounter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: (() {setState(() {
            count=0;
          });}), icon: Icon(Icons.restore))],
          backgroundColor: Colors.redAccent.shade200,
          title: Text('Stylish Counter',style: TextStyle(letterSpacing:2),),
        ),
        drawer:Container(color: Colors.redAccent[300],height: 30,),
        body: Column(children: [
          SizedBox(
            height: 250,
          ),
          Text(
            'Counter increased $count times',
            style: TextStyle(fontSize: 25,letterSpacing: 2),
          ),
          SizedBox(
            height: 250,
          ),
          Row(
            children: [
              SizedBox(
                width: 150,
              ),
              FloatingActionButton(
                  splashColor: Colors.blueAccent,
                  backgroundColor: Colors.redAccent.shade200,
                  elevation: 20,
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  }),
            ],
          )
        ]),
      ),
    );
  }
}
