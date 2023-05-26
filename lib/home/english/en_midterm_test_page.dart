import 'package:exams/home/english/add_test/en_add_infor_page.dart';
import 'package:flutter/material.dart';

class EngMidtermTestPage extends StatelessWidget {
  final String testTypeEnt = "Oraliq test";
  const EngMidtermTestPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(right: 10, left: 10, top: 10),
                      child: SizedBox(
                        height: 120,
                        child: Card(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Center(
                                  child: SizedBox(
                                    child: Image.asset("assets/database.png"),
                                    height: 80,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const VerticalDivider(
                                  width: 4,
                                  color: Colors.green,
                                  thickness: 2,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: const Text(
                                            "Database",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          "Guruh: A1",
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        const Text(
                                          "Soni: 30",
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        const Text(
                                          "Vaqti: 30 min",
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        const Text(
                                          "Tuzuvchi: Shaxriyor Sharofiddinov",
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const VerticalDivider(
                                  width: 4,
                                  color: Colors.green,
                                  thickness: 2,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.share,
                                        size: 25,
                                        color: Colors.green,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        size: 25,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EnAddTestInformationPage(testTypeEnt)));
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
