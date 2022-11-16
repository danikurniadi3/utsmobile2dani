import 'package:flutter/material.dart';

class call extends StatelessWidget {
  const call({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                "Call",
                style: TextStyle(color: Colors.green),
              ),
            ),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[100],
                  child: const Text("He'd have you all unravel at the"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[300],
                  child: const Text('Sound of screams but the'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[400],
                  child: const Text('Who scream'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[500],
                  child: const Text('Revolution is coming...'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[600],
                  child: const Text('Revolution, they...'),
                ),
              ],
            )));
  }
}
