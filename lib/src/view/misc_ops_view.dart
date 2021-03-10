import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MiscOpsView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: const Icon(Icons.account_box_sharp),
          middle: Text('MISC TEST', style: Theme.of(context).textTheme.headline5),
          backgroundColor: Colors.lightGreen,
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
                    print("Forex event invoke");
                  },
                  child: const Text('Forex \$CAD-\$USD!')
              ),

              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                  ),
                  onPressed: () {
                    print("Data aggregator event invoke");
                  },
                  child: const Text('Agregator Invoke!')
              ),

              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                  ),
                  onPressed: () {
                    print("Google map event invoke");
                  },
                  child: const Text('Google Map!')
              ),

              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                  ),
                  onPressed: () {
                    print("GPS map event invoke");
                  },
                  child: const Text('GPS Tag!')
              ),


            ]

        )
    );
  }
}