import 'package:flutter/material.dart';
import 'package:task3flutter/logInScreen.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:Scaffold(
      appBar: AppBar(
        title: const Text('Welcome user:)'),
        bottom: const TabBar(
          tabs:[
            Tab(text:'Info'),
            Tab(text:'Settings'),
          ],
        ),
      ),
      body: Center(
          child: GestureDetector(
            child:
            Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',height: 300,width: 300,),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (s) {
                return FirstScreen();
              }));
            },
        ),
      ),
    ));
  }
}
