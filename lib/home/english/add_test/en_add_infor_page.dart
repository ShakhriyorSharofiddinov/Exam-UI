import 'package:exams/home/english/add_test/en_add_list_page.dart';
import 'package:exams/models/question.dart';
import 'package:exams/models/testDB.dart';
import 'package:flutter/material.dart';

class EnAddTestInformationPage extends StatefulWidget {

  final String testTypeEnt;
  const EnAddTestInformationPage( this.testTypeEnt, {Key? key}) : super(key: key);

  @override
  State<EnAddTestInformationPage> createState() =>
      _EnAddTestInformationPageState();
}

class _EnAddTestInformationPageState extends State<EnAddTestInformationPage> {

  String professionType = "Ingliz tili";
  TextEditingController _directionType = TextEditingController();
  TextEditingController  _groupName= TextEditingController();
  TextEditingController _amount = TextEditingController();
  TextEditingController _time = TextEditingController();
  TextEditingController _compiler = TextEditingController();

  late TestDB testDB1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                width: 2
            ),

          ),
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontFamily: "RobotoCondensed-Regular",
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          title: const Text("Test ma'lumotlari"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  controller: _directionType,
                  style: TextStyle(
                      fontSize: 18
                  ),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        )
                    ),
                    label: Text("Dasturlash yo'nalishi"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _groupName,
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                      fontSize: 18
                  ),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        )
                    ),
                    label: Text("Guruh nomi"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _amount,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 18
                  ),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      label: Text("Soni"),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                          )
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _time,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 18
                  ),
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      label: Text("Vaqti"),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      suffix: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {
                          },
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.green,
                            size: 26,
                          ),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                          )
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _compiler,
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                      fontSize: 18
                  ),
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      label: Text("Tuzuvchi"),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                          )
                      )
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {
                      List<Question> list = [];
                      testDB1 = TestDB(professionType, "Salom", _directionType.text, _groupName.text, _time.text.compareTo(""), _amount.text as int, _compiler.text, list);
                      testDB1.setTestDBList(testDB1);
                      print(testDB1.amount);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EnAddTestList()));
                    },
                    color: Colors.green,

                    child: Text("Testlarni kiritish",
                      style: TextStyle(color: Colors.black, fontSize: 18),),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
  
}

