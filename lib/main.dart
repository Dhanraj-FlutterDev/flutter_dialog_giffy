import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
    );
  }
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Example 1 network image',style: TextStyle(fontSize: 20),),
              color: Colors.orange,
              onPressed: (){
                showDialog(
                    context: context,
                  builder: (_)=> NetworkGiffyDialog(
                      image: Image.network('https://media.giphy.com/media/wTgYlmxctT2O4/giphy.gif',fit:
                        BoxFit.cover,),
                      title: Text('Loading....',style: TextStyle(fontWeight: FontWeight.bold,),),
                    description: Text('This is content one 1 please wait for more content hope you like the video'),
                    cornerRadius: 10.0,
                    onOkButtonPressed: (){},
                    entryAnimation: EntryAnimation.TOP_LEFT,
                  ),
                );
              },
            ),
            RaisedButton(
               color: Colors.orange,
              child: Text('Example 2 Flare gif',style: TextStyle(fontSize: 20),),
                onPressed: (){
                showDialog(
                    context: context,
                  builder: (_)=> FlareGiffyDialog(
                      flarePath: 'assets/space_demo.flr',
                      flareFit:BoxFit.cover ,
                      flareAnimation: 'loading',
                      title: Text('Space Demo',style: TextStyle(fontWeight: FontWeight.w900),),
                    description: Text('This is content one 1 please wait for more content hope you like the video'),
                    entryAnimation: EntryAnimation.DEFAULT,
                    onlyOkButton: true,
                    onOkButtonPressed: (){
                        Navigator.pop(context);
                    },
                  ),
                );
                },
            ),
            RaisedButton(
              child: Text('Example 3 Assets image'),
              color: Colors.orange,
              onPressed: (){
                showDialog(
                    context: context,
                  builder: (_)=> AssetGiffyDialog(
                      image: Image.asset('assets/jacket.gif',fit: BoxFit.cover,),
                      title: Text('Man with Jacket',style: TextStyle(fontWeight: FontWeight.bold),),
                    description: Text('This is content one 1 please wait for more content hope you like the video'),
                    entryAnimation: EntryAnimation.BOTTOM_RIGHT,
                    onOkButtonPressed: (){},
                    cornerRadius: 30.0,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}














