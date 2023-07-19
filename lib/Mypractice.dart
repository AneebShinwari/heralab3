import 'package:flutter/material.dart';
import 'package:heralab3/NextScreen.dart';
class PracticeScreen extends StatelessWidget {
  const PracticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice'),
      ),
      body: Center(child:
      ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen(),));
        },child: Text('NextScreen'),
      )),
    );
  }
}
