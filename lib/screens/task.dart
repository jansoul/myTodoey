class Task {
  final String taskText;
  bool isDone;

  Task({required this.taskText, this.isDone = false});

  void toggle() {
    isDone = !isDone;
  }
}
