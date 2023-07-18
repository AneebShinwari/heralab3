import 'package:flutter/material.dart';
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var index =0;
  @override
  Widget build(BuildContext context) {
    print(index);
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(),
          Text(index.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            index ++;
           setState(() {

           });
          },
              child: Text('Add'))
        ],
      ),
    );
  }
}
