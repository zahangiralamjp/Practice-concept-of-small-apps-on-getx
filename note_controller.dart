import 'package:get/get.dart';
import 'note_model.dart';

class NoteController extends GetxController {
  var notes = <Note>[].obs;

  void addNote(String title, String content) {
    notes.add(Note(title: title, content: content));
  }

  void deleteNote(int index) {
    notes.removeAt(index);
  }
}
