import 'package:flutter/material.dart';

class Instruction extends StatelessWidget {
  const Instruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Instruction",style: TextStyle(fontSize: 30),)),
    );
  }
}
