import 'package:flutter/material.dart';

import '../Model.dart';
class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int index=0;

  int currentindex=0;
// currentindex or index2 etc kuch b name dy skty ho
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screens'),

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
