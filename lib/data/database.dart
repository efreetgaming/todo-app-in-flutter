import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

  List todoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

  // first time opening the app
  void createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false]
    ];
  }

  // load the data 
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the data
  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}