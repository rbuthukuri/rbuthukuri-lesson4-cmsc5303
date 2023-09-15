import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
    const StartScreen({super.key});

    static const routeName ='/startScreen';

@override
State<StatefulWidget> createState() {
    return StartState();
}

}
class StartState extends State<StartScreen> {

    late StartScreenController con;

    @override
    void initState() {
        super.initState();
        con = StartScreenController(this);
          }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Start Screen'),
                   ),//appbar
                   body: SingleChildScrollView(
                    child: Column(
                        children: [
                            FilledButton(
                                onPressed: con.onPressedCounterDemo,
                                child: const Text('Counter Demo'),
                            ), // filledbutton
                        ],
                    ),//column
                   ),//SingleChildScrollview
        );//Scaffold
    }
   
}