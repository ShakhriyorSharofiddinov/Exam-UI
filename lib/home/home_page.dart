import 'package:exams/home/programming/programming_page.dart';
import 'package:flutter/material.dart';

import 'english/english_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  String professionEn = "Engliz tili";
  String professionPro = "Dasturlash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Appbar
             Expanded(
               flex: 1,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Image(
                       height: 40,
                       image: AssetImage("assets/pdp.png"),
                     ),

                     ///
                     Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Container(
                         height: 160,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: const DecorationImage(
                               image: NetworkImage(
                                   "https://i.ytimg.com/vi/IlVpkBf3McU/maxresdefault.jpg"),
                               fit: BoxFit.fill,
                             )),
                       ),
                     ),
                   ],
                 )
             ),

              ///
              Expanded(
                flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Dasturlash",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => ProgrammingPage()),
                              );
                            },
                            child: const Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff53B175),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ///
                      Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: SizedBox(
                                    height: 200,
                                    width: 150,
                                    child: Card(
                                      shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: const BorderSide(
                                              color: Colors.white)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: SizedBox(
                                                  height: 100,
                                                  child:
                                                  Image.asset("assets/database.png")),
                                            ),
                                            const SizedBox(height: 10),
                                            const Divider(
                                              height: 4,
                                              color: Colors.green,
                                              thickness: 2,
                                            ),
                                            const SizedBox(height: 6),
                                            const Text(
                                              "Database",
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            const Text("Oraliq test"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              })),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Ingliz tili",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => EnglishPage()),
                              );
                            },
                            child: const Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff53B175),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ///
                      Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: SizedBox(
                                    height: 200,
                                    width: 150,
                                    child: Card(
                                      shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: const BorderSide(
                                              color: Colors.white)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: SizedBox(
                                                  height: 100,
                                                  child:
                                                  Image.asset("assets/database.png")),
                                            ),
                                            const SizedBox(height: 10),
                                            const Divider(
                                              height: 4,
                                              color: Colors.green,
                                              thickness: 2,
                                            ),
                                            const SizedBox(height: 6),
                                            const Text(
                                              "Database",
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            const Text("Oraliq test"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              })),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
