import '../model/exercise.dart';
import 'dart:math';

Exercise _benchPress =
    Exercise("Bench Press", "20 mins", "assets/benchPress.png");
Exercise _benchPress2 =
    Exercise("Bench Press 2", "20 mins", "assets/benchPress2.png");
Exercise _pushUp = Exercise("Push Up", "12 mins", "assets/pushUps.png");
Exercise _dumblePushUps =
    Exercise("Dumble Push Up", "12 mins", "assets/dumblePushUp.png");
Exercise _absCrunch = Exercise("Abs Crunch", "15 mins", "assets/crunches.png");
Exercise _absCrunch2 =
    Exercise("Abs Crunch", "15 mins", "assets/crunches2.png");
Exercise _sideTwist = Exercise("Side Twist", "19 mins", "assets/sideTwist.png");
Exercise _backRows = Exercise("Back Rows", "13 mins", "assets/backRows.png");
Exercise _declineBenchPress =
    Exercise("Decline Bench Press", "12 mins", "assets/declineBenchPress.png");
Exercise _vrikshAsanas =
    Exercise("vriksh asanas", "17 mins", "assets/vrikshAsanas.png");
Exercise _bicepsCurl =
    Exercise("Biceps Curl", "22 mins", "assets/bicepsCurls.png");
Exercise _tricipes = Exercise("Tricipes", "12 mins", "assets/tricipes.png");

class ExcerciseController {
  createList() {
    print(_benchPress);
  }

  List<Exercise> getAllExcersiseList() {
    return excersiseList;
  }

  List<Exercise> getRandomExcersiseList(int noOfExcersise) {
    print(_benchPress.name);

    // List<Exercise> randomeList;
    // for (var i = 0; i < noOfExcersise; i++) {
    //   try {
    //     randomeList.add(excersiseList[Random().nextInt(noOfExcersise)]);
    //   } on Exception catch (e) {
    //     print(e);
    //     print(Random().nextInt(noOfExcersise));
    //   }
    // }
    return excersiseList;
  }
}

List<Exercise> excersiseList = [
  (_benchPress),
  (_benchPress2),
  (_pushUp),
  (_dumblePushUps),
  (_absCrunch),
  (_absCrunch2),
  (_sideTwist),
  (_backRows),
  (_declineBenchPress),
  (_vrikshAsanas),
  (_bicepsCurl),
  (_tricipes)
];
