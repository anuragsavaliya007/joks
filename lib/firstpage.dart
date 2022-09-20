import 'package:flutter/material.dart';
import 'package:joks/Dbhelper.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {

  Dbhelper dbhelper = Dbhelper();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anurag")),
      body: Center(
        child: ElevatedButton(onPressed: () {
          dbhelper.copydatabase();

        }, child: Text("press me")),
      ),


    );
  }


}
