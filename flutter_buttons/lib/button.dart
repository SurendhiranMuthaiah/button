import 'package:flutter/material.dart';

void main() => runApp(ElevatedButtonExampleApp());

class ElevatedButtonExampleApp extends StatelessWidget {
  const ElevatedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('ElevatedButton Sample')),
        body: const ElevatedButtonExampleApp(),
      ),
    );
  }
}

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: Text('Disabled'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: style,
            onPressed: () {
              print('Enabled Button Pressed');
            },
            child: Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
