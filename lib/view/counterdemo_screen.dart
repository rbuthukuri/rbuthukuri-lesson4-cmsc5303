import 'package:flutter/material.dart';

class CounterDemoScreen extends StatefulWidget {
 const CounterDemoScreen({super.key});

 static const routeName = '/counterDemoScreen';

    @override
    State<StatefulWidget> createState() {
        return CounterDemoState();
    }

}

class CounterDemoState extends State<CounterDemoScreen> {
    late Counter model;
    @override
    void initState() {
        super.initState();
        model = Counter();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Counter Demo'),
            ),//appbar
            body: Container(
                width: MediaQuery.of(context).size.width,
            child: Coloum(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Expanded(
                                flex: 1,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    Icons.arrow_downward,
                                     size: 50.0,
                                     ),//icon
                            ), // IconButton
                            ),// expanded
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: Container(
                                        color: Colors.amber[100],
                                        padding: const EdgeInsets.fromLTRB(30.0, 12.0, 30.0, 12.0),
                            child: Text(
                                '${model.value}',
                                style: Theme.of(context).textTheme.displayLarge,
                            ),// Text
                             ),//container
                            ),//center
                         ),//expanded
                            Expanded(
                                flex: 1;
                            child: IconButton(
                                onPressed: (){},
                                icon: const Icon(
                                    Icons.arrow_upward,
                                size: 50.0,
                                ),//icon
                            ), // IconButton
                            ),//expanded
                        ],//
                    ),// row
                    Text('# of clicks = ${model.clicks}'),
                    style: Theme.of(context).textTheme.headlineLarge,), //
                ] //child
            ),// column
        );//scaffold
    
    }

}