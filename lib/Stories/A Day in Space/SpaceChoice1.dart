import 'package:flutter/material.dart';

import 'SpaceChoice2.dart';

class SpaceChoice1 extends StatefulWidget {
  final choice1 ;
  final choice2 ;
  final display ;
  const SpaceChoice1({Key? key, this.choice1, this.choice2, this.display}) : super(key: key);

  @override
  _SpaceChoice1State createState() => _SpaceChoice1State();
}

class _SpaceChoice1State extends State<SpaceChoice1> {
  String displayA = 'You find a rather simple request, the cafeterias oven had stopped working. So you grab some tools and materials and get to work. You make your way to the cafeteria and enter the kitchen . Apparently the oven isn’t heating up, so you open the back panel to find a jumble of wires and coils. You…';
  String choice1A = 'Remove some cables, what could go wrong';
  String choice2A = 'Replace a few coils';
  String displayB = 'You arrive at the infirmary and they treat your hands. After the doc treats your hands they mention how the items you damaged your hands with may cause health issues and to see them if you notice anything ';
  String choice1B = 'back to work';
  String choice2B = 'Something strange starts happening';
  String resA = 'You remove or reconfigure some redundant looking wires, then when testing the oven the door melts, and you quickly cut the power to the oven, and killing the sub breaker for the kitchen. Good luck explaining this to your boss.';
  String resB = 'You replace some burnt out coils, then test the oven. It appears to be in working order. With that you take a few more jobs and start to enjoy your life, and you may have gotten to meet some aliens too, but only you know what happened right.';
  String resC = 'You work in the cafeteria, doing simple work but your hands never truly recover. You always feel irritated and in pain when doing anything, and you think it may be spreading beyond your hands, but you keep it secret as best as you can.';
  String resD = 'You soon realize that your hands start to corrode, fearing the worst the doc and security expel you from the ship via the airlock';

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
                  child: Text(widget.choice1, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SpaceChoice2(display: displayA, choice1: choice1A, choice2: choice2A, res1: resA, res2: resB,)
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text(widget.choice2, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SpaceChoice2(display: displayB, choice2: choice2B, choice1: choice1B,res1: resC, res2:  resD,)
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
