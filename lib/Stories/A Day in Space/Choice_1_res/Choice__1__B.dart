import 'package:flutter/material.dart';
import 'package:interactive_story/Stories/A%20Day%20in%20Space/Choice_2_res/temp.dart';

class Choice__1__B extends StatefulWidget {
  const Choice__1__B({Key? key}) : super(key: key);

  @override
  Choice__1__BState createState() => Choice__1__BState();
}

class Choice__1__BState extends State<Choice__1__B> {
  int score = 0;
  String display = '';
  String choice_A = '';
  String choice_B = '';
  String choice_C = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('A Day in Space'),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Prepare for the day', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => temp()
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Gaze into the void of space', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => temp()
                    ),
                    );
                  },
                ),
              ],
            ),
          )
      ),
    );
  }
}