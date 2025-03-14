import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/admin_controller.dart';

class AdminPage extends StatelessWidget {
  final AdminController adminController = Get.put(AdminController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Panel')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => adminController.resetAllVotes(),
          child: Text('Reset All Votes'),
        ),
      ),
    );
  }
}
