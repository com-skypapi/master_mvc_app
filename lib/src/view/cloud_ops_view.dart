import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CloudOpsView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: const Icon(Icons.cloud_download),
          middle: Text('CLOUD OPS TEST', style: Theme.of(context).textTheme.headline5),
          backgroundColor: Colors.blueGrey,
          padding: const EdgeInsetsDirectional.only(),
        ),
        child: ListView(
          padding: const EdgeInsets.all(55.0),
          children: <Widget>[

//        home: AppBar(title: const Text('Counter Page Demo')),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            onPressed: () {
                print("Something greeen");
            },
            child: const Text('Firebase Firestore!')
          ),

          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
              ),
              onPressed: () {
                print("Something red");
              },
              child: const Text('JSON request!')
          ),

          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
              ),
              onPressed: () {
                print("Something blue");
              },
              child: const Text('Google Cloud request!')
          ),

          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
              ),
              onPressed: () {
                print("Something blue");
              },
              child: const Text('AWS Cloud request!')
          ),

          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
              ),
              onPressed: () {
                print("Something blue");
              },
              child: const Text('Azure Cloud request!')
          ),


        ]

    )
    );
  }
}