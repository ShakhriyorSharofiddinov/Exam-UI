import 'package:flutter/material.dart';

class ProgrammingPage extends StatefulWidget {

  const ProgrammingPage({Key? key}) : super(key: key);

  @override
  State<ProgrammingPage> createState() => _ProgrammingPageState();
}

class _ProgrammingPageState extends State<ProgrammingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Text("Programming"),
      ),
    );
  }
}
