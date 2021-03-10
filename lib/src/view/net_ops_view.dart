import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class NetOpsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: const Icon(Icons.wifi_sharp),
          middle: Text('NET OPS TEST', style: Theme.of(context).textTheme.headline5),
          backgroundColor: Colors.orange,
          padding: const EdgeInsetsDirectional.only(),
        ),
      child: ListView(
        padding: const EdgeInsets.all(55.0),
          children: [


            CupertinoButton(
              onPressed: () => {
                print("NETWARE check event invoke")
              },
              color: CupertinoColors.activeOrange,
              borderRadius: new BorderRadius.circular(30.0),
              child: Text("NETWARE Check"),
            ),

            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  print("Something greeen");
                },
                child: const Text('Firebase Firestore!')
            ),
          ],
      )
    );
  }
}