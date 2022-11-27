import 'package:flutter/material.dart';
import 'package:pubg_mobile_description/pages/Description.dart';
import 'package:pubg_mobile_description/pages/Instruction.dart';
import 'package:pubg_mobile_description/pages/Reviews.dart';
import 'package:pubg_mobile_description/pages/purchase.dart';

class SingleScreen extends StatefulWidget {
  const SingleScreen({Key? key}) : super(key: key);

  @override
  State<SingleScreen> createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("PUBG Mobile UC (Indonesia)",style: TextStyle(color: Colors.black),),
          leading: Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: (){},
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_back_ios),
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                ),
              ),
            ),
          ),
          elevation: 0,
          centerTitle: true,

          bottom:   TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Purchase",),
              Tab(text: "Instruction"),
              Tab(text: "Description",),
              Tab(text: "Reviews",),

            ],
          ),
        ),

        body: TabBarView(
          children: [
            Purchase(),
            Instruction(),
            Description(),
            Reviews(),

          ],
        ),
      ),
    );
  }
}
