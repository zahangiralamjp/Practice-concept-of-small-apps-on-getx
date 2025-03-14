import 'package:get/get.dart';
import '../controllers/vote_controller.dart';

class AdminController extends GetxController {
  final VoteController voteController = Get.find();

  void resetAllVotes() {
    voteController.resetVotes();
  }
}
