import 'package:exams/home/english/en_entrance_test_page.dart';
import 'package:exams/home/english/en_midterm_test_page.dart';
import 'package:flutter/material.dart';

class EnglishPage extends StatefulWidget {
  const EnglishPage({Key? key}) : super(key: key);

  @override
  State<EnglishPage> createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {

  String testTypeMid = "Oraliq test";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 80,
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: const SizedBox(),
            elevation: 0,
            shape: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 2,
              ),
            ),
            titleTextStyle: const TextStyle(
                fontSize: 24,
                fontFamily: "RobotoCondensed-Regular",
                fontWeight: FontWeight.bold,
                color: Colors.black,
            ),
            title: const Text("Ingliz tili"),
          ),
          body: Column(
            children: [
              TabBar(
                  indicatorWeight: 2,
                  indicatorColor: Colors.green.shade400,
                  tabs: [
                    Tab(
                      child: Text(
                        "Oraliq testlar",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Sinov testlar",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ]
              ),
              Expanded(
                  child: TabBarView(
                    children: [
                      EngMidtermTestPage(),
                      EngEntranceTestPage()
                    ],
                  )
              )
            ],
          )),
    );
  }
}
