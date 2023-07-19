import 'package:flutter/material.dart';
class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextScreen'),
      ),
      body: Center(child: ElevatedButton(
        onPressed: () {
           Navigator.pop(context);
        }, child: Text('previous'),
      )),
    );
  }
}
