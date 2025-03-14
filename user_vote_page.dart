import 'package:flutter/material.dart';
import 'package:flutter_application_3/admin_page.dart';
import 'package:get/get.dart';
import '../controllers/vote_controller.dart';

class UserVotePage extends StatelessWidget {
  final VoteController voteController = Get.put(VoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vote App'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(AdminPage());
              },
              icon: Icon(Icons.admin_panel_settings))
        ],
      ),
      body: Obx(() => ListView.builder(
            itemCount: voteController.votes.length,
            itemBuilder: (context, index) {
              var vote = voteController.votes[index];
              return ListTile(
                title: Text(vote.option),
                trailing: Text('Votes: ${vote.count}'),
                onTap: () => voteController.incrementVote(index),
              );
            },
          )),
    );
  }
}
