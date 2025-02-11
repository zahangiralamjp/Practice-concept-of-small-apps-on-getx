import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/todo_controller.dart';

// HomeView
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  final TodoController todoController = Get.put(TodoController());
  TextEditingController taskController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do List"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                  labelText: "Add a fun ask!",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (taskController.text.isNotEmpty) {
                          todoController.addTodo(taskController.text);
                          taskController.clear();
                        }
                      },
                      icon: const Icon(Icons.add))),
            ),
            Expanded(
                child: Obx(() => ListView.builder(
                      itemCount: todoController.todos.length,
                      itemBuilder: (context, index) {
                        final todo = todoController.todos[index];
                        return ListTile(
                          title: Text(todo.title),
                          trailing: IconButton(
                              onPressed: () {
                                todoController.deleteTodo(index);
                              },
                              icon: Icon(Icons.delete)),

                          //
                        );
                      },

                      // *
                    )))
          ],
        ),
      ),
    );
  }
}

/*

class HomeView extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'To-Do List',
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: taskController,
              decoration: InputDecoration(
                labelText: 'Add a fun task!',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add, color: Colors.purple),
                  onPressed: () {
                    if (taskController.text.isNotEmpty) {
                      todoController.addTodo(taskController.text);
                      taskController.clear();
                    }
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
                  itemCount: todoController.todos.length,
                  itemBuilder: (context, index) {
                    final todo = todoController.todos[index];
                    return Card(
                      color: todo.isDone
                          ? Colors.greenAccent
                          : Colors.orangeAccent,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        title: Text(
                          todo.title,
                          style: TextStyle(
                            fontSize: 20,
                            decoration:
                                todo.isDone ? TextDecoration.lineThrough : null,
                          ),
                        ),
                        leading: IconButton(
                          icon: Icon(
                            todo.isDone
                                ? Icons.check_circle
                                : Icons.circle_outlined,
                            color: todo.isDone ? Colors.green : Colors.grey,
                          ),
                          onPressed: () =>
                              todoController.toggleTodoStatus(index),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => todoController.deleteTodo(index),
                        ),
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}

*/
