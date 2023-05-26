
import 'package:exams/models/question.dart';

class TestDB {
  String? professionType; /// Dastrulash yoki Ingliz tili
  String? testType; /// Oraliq yoki Sinov
  String? directionType; /// Database, Ielts, Gramatika, Frontend
  String? groupName;
  int? time;
  int? amount;
  String? compiler;
  List<Question>? questionList;

  TestDB(
      this.professionType,
      this.testType,
      this.directionType,
      this.groupName,
      this.time,
      this.amount,
      this.compiler,
      this.questionList,
      );

  List<TestDB> testDBList = [];

  List<TestDB> getTestDbList () {
    return testDBList;
  }
  void setTestDBList (TestDB testDB) {
    testDBList.add(testDB);
  }

}