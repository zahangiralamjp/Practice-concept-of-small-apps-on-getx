import 'package:get/get.dart';
import '../models/vote_model.dart';

class VoteController extends GetxController {
  var votes = <Vote>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize with some options
    votes.addAll([
      Vote(option: 'Option 1'),
      Vote(option: 'Option 2'),
      Vote(option: 'Option 3'),
    ]);
  }

  void incrementVote(int index) {
    votes[index].count++;
    votes.refresh(); // Update the UI
  }

  void resetVotes() {
    for (var vote in votes) {
      vote.count = 0;
    }
    votes.refresh(); // Update the UI
  }
}
