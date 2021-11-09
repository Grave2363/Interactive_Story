import 'package:flutter/material.dart';
import 'package:interactive_story/main.dart';
class SpaceFinal extends StatefulWidget {
  final display ;
  const SpaceFinal({Key? key, this.display}) : super(key: key);

  @override
  _SpaceFinalState createState() => _SpaceFinalState();
}

class _SpaceFinalState extends State<SpaceFinal> {
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
                Text( widget.display, style: TextStyle(color: Colors.black, fontSize: 20)),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text("Home", style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyApp()
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
