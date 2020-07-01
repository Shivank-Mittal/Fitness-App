import 'package:fitness_App/screens/dayWise_Exercise.dart';
import 'package:fitness_App/screens/random_exercise.dart';
import 'package:fitness_App/screens/showExcerciseList.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _exerciseModes = ["Random", "Day Wise"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Let\s Do It',
            style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/LCOWORKOUTLOGOtransparent.png",
                  height: 350,
                ),
                Divider(),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: _exerciseModes.length,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        margin: EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(50)),
                        elevation: 10,
                        color: Colors.purpleAccent,
                        child: Center(
                          child: InkWell(
                            splashColor: index % 2 == 0
                                ? Colors.redAccent
                                : Colors.orangeAccent[100],
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                switch (_exerciseModes[index]) {
                                  case "Random":
                                    // return RandomExercise();
                                    return ShowExcerciseList();
                                  case "Day Wise":
                                    return DayWiseExercise();
                                  default:
                                    return Home();
                                }
                              }));
                            },
                            child: Container(
                              height: 80,
                              child: Center(
                                child: Text(
                                  _exerciseModes[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
