import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Task extends Equatable {
  String title;
  bool isCompleted = false;
  var date = DateTime.now();
  Task(this.title);

  @override
  List<Object?> get props => [title];
}

class TaskApp {
  List<Task> tasks = [];
  void addTask(Task newTask) {
    tasks.add(newTask);
  }

  void reomveTask(Task task) {
    tasks.remove(task);
  }

  void updateTask(Task task) {
    task.isCompleted = !task.isCompleted;
  }

  List<Task> get viweTasks => tasks;
}
