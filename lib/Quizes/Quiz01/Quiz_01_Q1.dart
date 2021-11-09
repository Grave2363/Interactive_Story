import 'package:flutter/material.dart';

class Quiz_01_Q1 extends StatefulWidget {
  const Quiz_01_Q1({Key? key}) : super(key: key);

  @override
  _Quiz_01_Q1State createState() => _Quiz_01_Q1State();
}

class _Quiz_01_Q1State extends State<Quiz_01_Q1> {
  String Q2 = "temp question";
  String A1_Q2 = "temp Ans";
  String A2_Q2 = "temp Ans";
  String A3_Q2 = "temp Ans";
  String A4_Q2 = "temp Ans";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('Quiz Game'),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Placeholder for Question. All answer buttons will loop back to here."),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Temp ans 01', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q1()
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Temp ans 02', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q1()
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Temp ans 03', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q1()
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Temp ans 04', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Quiz_01_Q1()
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
