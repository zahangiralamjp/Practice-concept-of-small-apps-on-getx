import 'package:admin_panel/add_note.dart';
import 'package:admin_panel/note_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// HomeScreen
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note pad"),
      ),
      body: Obx(() => ListView.builder(
            itemCount: noteController.notes.length,
            itemBuilder: (context, index) {
              final noteData = noteController.notes[index];

              return Card(
                child: ListTile(
                  title: Text(noteData.title),
                  subtitle: Text(noteData.content),
                  trailing: IconButton(
                      onPressed: () {
                        noteController.deleteNote(index);
                      },
                      icon: const Icon(Icons.delete)),
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddNoteScreen());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}




/*
class HomeScreen extends StatelessWidget {
  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kids Note App'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: noteController.notes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(noteController.notes[index].title),
                subtitle: Text(noteController.notes[index].content),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    noteController.deleteNote(index);
                  },
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddNoteScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

*/