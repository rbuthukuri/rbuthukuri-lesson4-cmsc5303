import 'package:flutter/material.dart';

import '../view/start_screen.dart';

class StartScreenController {
    StartState state;
    StartScreenController(this.state);

    void onPressedCounterDemo() {
        Navigator.pushNamed(state.context, CounterDemoScreen.routeName);
    }
}