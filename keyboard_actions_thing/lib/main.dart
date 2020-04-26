import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Sample(),
    );
  }
}

class Sample extends StatelessWidget {
  final _focusNodeName = FocusNode();
  final _focusNodeQuantity = FocusNode();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Keyboard Actions Thing"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
        child: Center(
          
            child: KeyboardActions(
              tapOutsideToDismiss: true,
              config: KeyboardActionsConfig(
                keyboardSeparatorColor: Colors.purple,
                actions: [
                  KeyboardAction(
                    focusNode: _focusNodeName,
                  ),
                  KeyboardAction(
                    focusNode: _focusNodeQuantity,
                  ),
                ],
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: size.height / 4,
                    child: FlutterLogo(),
                  ),
                  TextField(
                    focusNode: _focusNodeQuantity,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Quantity",
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
        );
  
  }
}