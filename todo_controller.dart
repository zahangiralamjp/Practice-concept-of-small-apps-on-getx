import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../models/todo_model.dart';

class TodoController extends GetxController {
  var todos = <TodoModel>[].obs;
  final storage = GetStorage();

  // @override
  // void onInit() {
  //   super.onInit();
  //   loadTodos();
  // }

  void addTodo(String title) {
    todos.add(TodoModel(title: title));
    saveTodos();
  }

  void toggleTodoStatus(int index) {
    todos[index].isDone = !todos[index].isDone;
    todos.refresh();
    saveTodos();
  }

  void deleteTodo(int index) {
    todos.removeAt(index);
    saveTodos();
  }

  void saveTodos() {
    storage.write('todos', todos.map((e) => e.toJson()).toList());
  }

  void loadTodos() {
    var storedTodos = storage.read<List>('todos') ?? [];
    todos.assignAll(storedTodos
        .map((e) => TodoModel.fromJson(Map<String, dynamic>.from(e)))
        .toList());
  }
}
