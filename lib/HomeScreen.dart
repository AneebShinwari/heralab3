import 'package:flutter/material.dart';

import 'Model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  index= value;
                  setState(() {

                  });
                  print(index);
                },
                itemCount: modleList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(modleList[index].image.toString(),height: 200,
                      width: 200,fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        modleList[index].name.toString(),
                        style: TextStyle(fontSize: 25, color: modleList[index].color),
                      )
                    ],
                  );
                },
              ),
            ),


            //indicator
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(int i=0; i<modleList.length;i++)...[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: i==index ? Colors.yellow :Colors.blue,
                          shape: BoxShape.circle
                        ),
                      ),
            ]
                    ],
                  ),
                  Text(index.toString(),style: TextStyle(fontSize: 20),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
