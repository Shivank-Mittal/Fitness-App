import 'package:flutter/material.dart';
import '../controller/excerciseController.dart';

class ShowExcerciseList extends StatefulWidget {
  @override
  _ShowExcerciseListState createState() => _ShowExcerciseListState();
}

class _ShowExcerciseListState extends State<ShowExcerciseList> {
  ExcerciseController exerciseContoller = new ExcerciseController();
  // List<Exercise> randomExcerciseList;

  @override
  Widget build(BuildContext context) {
    var randomExcerciseList = exerciseContoller.getRandomExcersiseList(5);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Randome Excercises',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: randomExcerciseList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24),
                    shadowColor: Color(0x802196f3),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  randomExcerciseList[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      fontSize: 20),
                                ),
                                Text(randomExcerciseList[index].time)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(
                                randomExcerciseList[index].pictureUrl,
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.play_arrow), onPressed: null),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
