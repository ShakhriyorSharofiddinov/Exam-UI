import 'dart:ui';

import 'package:exams/models/answer.dart';
import 'package:flutter/material.dart';

import '../../../models/question.dart';

class EnAddTestList extends StatefulWidget {
  const EnAddTestList({Key? key}) : super(key: key);

  @override
  State<EnAddTestList> createState() => _EnAddTestListState();
}

class _EnAddTestListState extends State<EnAddTestList> {


  List<Question> questionList = [];
  List<Answer> answerList = [];
  int nextIndex = 1;

  TextEditingController _questionName = TextEditingController();
  TextEditingController _answerA = TextEditingController();
  TextEditingController _answerB = TextEditingController();
  TextEditingController _answerC = TextEditingController();
  TextEditingController _answerD = TextEditingController();
  TextEditingController _isSelect = TextEditingController();

  List<bool> isSelect = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: const SizedBox(),
          elevation: 0,
          shape: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontFamily: "RobotoCondensed-Regular",
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          title: const Text("Testlar"),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 10),
                        child: Card(
                          shape: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Test-${index + 1}",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  controller: _questionName,
                                  maxLines: null,
                                  minLines: 1,
                                  style: TextStyle(fontSize: 16),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      label: Text("Savol")),
                                ),
                                SizedBox(
                                  height: 20,
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: _answerA,
                                      maxLines: null,
                                      minLines: 1,
                                      style: TextStyle(fontSize: 16),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Text("A) "),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: _answerB,
                                      maxLines: null,
                                      minLines: 1,
                                      style: TextStyle(fontSize: 16),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Text("B) "),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: _answerC,
                                      maxLines: null,
                                      minLines: 1,
                                      style: TextStyle(fontSize: 16),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Text("C) "),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: _answerD,
                                      maxLines: null,
                                      minLines: 1,
                                      style: TextStyle(fontSize: 16),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        label: Text("D) "),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      height: 40,
                                      child: TextField(
                                        controller: _isSelect,
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide()),
                                          label: Text("To'g'ri javob"),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(100, 40)),
                                        onPressed: () {
                                          answerList.clear();
                                          switch (_isSelect.text
                                              .toUpperCase()) {
                                            case "A":
                                              {
                                                isSelect[0] = true;
                                              }
                                              break;
                                            case "B":
                                              {
                                                isSelect[1] = true;
                                              }
                                              break;
                                            case "C":
                                              {
                                                isSelect[2] = true;
                                              }
                                              break;
                                            case "D":
                                              {
                                                isSelect[3] = true;
                                              }
                                              break;
                                          }
                                          answerList.add(Answer(
                                              _answerA.text,
                                              isSelect[0]));
                                          _answerA.text = "";
                                          answerList.add(Answer(
                                              _answerB.text,
                                              isSelect[1]));
                                          answerList.add(Answer(
                                              _answerC.text,
                                              isSelect[2]));
                                          answerList.add(Answer(
                                              _answerD.text,
                                              isSelect[3]));
                                          questionList.add(Question(_questionName.text, answerList));
                                          print(questionList[0].name);
                                          nextIndex++;
                                        },
                                        child: Text(
                                          "Saqlash",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black
                                          ),
                                        )
                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ));
  }
}
