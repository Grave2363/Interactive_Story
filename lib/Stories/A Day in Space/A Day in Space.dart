import 'package:flutter/material.dart';
import 'package:interactive_story/Stories/A%20Day%20in%20Space/Choice_1_res/Choice_1_A.dart';
import 'package:interactive_story/Stories/A%20Day%20in%20Space/Choice_1_res/Choice_1_C.dart';
import 'package:interactive_story/Stories/A%20Day%20in%20Space/Choice_1_res/Choice__1__B.dart';

class A_Day_in_Space extends StatefulWidget {
  const A_Day_in_Space({Key? key}) : super(key: key);

  @override
  _A_Day_in_SpaceState createState() => _A_Day_in_SpaceState();
}

class _A_Day_in_SpaceState extends State<A_Day_in_Space> {
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
                        builder: (context) => Choice_1_A()
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
                        builder: (context) => Choice__1__B()
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Go back to sleep', style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Choice_1_C()
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
/*
Start:

You awake in your cabin, greeted by an alarm echoing through the room. The curtain that once obscured your small window pulls back automatically, revealing the pitch emptiness of space. You….
Choice 1:
A: Prepare for the day +2
B: Gaze into the void of space +0
C: Go back to sleep -5

A: You throw on your engineer uniform and go prepare for your first day working abroad the U.S.S.  Azure Star.
B: You glance out the small window, finally letting it sink in that you're in space. As your mind drifts there's a knock on the door, you check and find an old friend who came to make sure you're up on time.
C: You go back to sleep, but after what feels like minutes your phone goes off while someone is banging on your door, your friend comes to say you're late and the boss isn't going to be pissed, even if you’re the newest hire.

After you get ready you give your room a look over, ensuring you have everything you need to get around the ship.

If friend didn’t get you:
You leave your room to go meet Sera in the mess hall to grab something to eat before your shift begins. You both eat a sandwich and see eachother off as you go to start your shift.
Else:
Sera tells you your shift starts soon and tosses you a sandwich as she goes to her bed on the opposite side of the room.

 Choice 2:
You arrive for your shift and clock in, barely making it on time. Your boss gives you a rundown of how things work and directs you to a terminal, and explains this is where you receive orders for things that need to be fixed, then leaves to do other work.
You…
A: open a rather easy sounding request +2
B: Pretend to work -2

If Pretend to work:
You fiddle with some small pieces of what look like scrap, but after a few moments sparks fly leaving your hands cut and burned.

If A:
You find a rather simple request, the cafeteria’s oven had stopped working. So you grab some tools and materials and get to work.
Else B:
You arrive at the infirmary and they treat your hands…
If score > 0:
Your hands are mostly fine but will need a few days to recover full use, having learned your lesson you work easy jobs, doing just enough to not get spaced.
Else : Yous hands will recover, but you will never regain full use of them, with this you could work in the cafeteria or….

Choices for B else:
A: cafeteria work
B: ….

If A:
You work in the cafeteria, doing simple work but your hands never truly recover. You always feel irritated and in pain when doing anything, and you think it may be spreading beyond your hands.
Else:
You soon realize that your hands start to crode, fearing the worst you are expelled out the airlock

Choices for A:
You arrive at the cafeteria and enter the kitchen . Apparently the oven isn’t heating up, so you open the back panel to find a jumble of wires and coils. You…
A: Remove some cables, what could go wrong
Result : You remove or reconfigure some redundant looking wires, then when testing the oven the door melts, and you quickly cut the power to the oven. Failure
B: Replace a few coils
Result : You replace some burnt out coils, then test the oven. It appears to be in working order. With that you take a few more jobs and start to enjoy your life, and you may have gotten to meet some aliens too, but only you know what happened right.
C: Press the ‘Test’ button
Result : You press the test button, and for a second nothing happens, then you notice power in the room starts to go out. In seconds the ship is without power. To this day rumors say some idiot overloaded the power system.
 */