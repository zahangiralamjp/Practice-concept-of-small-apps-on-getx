import 'package:flutter/material.dart';
import 'package:flutter_application_3/admin_page.dart';
import 'package:get/get.dart';
import 'user_vote_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vote App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: UserVotePage(),
      getPages: [
        GetPage(name: '/user', page: () => UserVotePage()),
        GetPage(name: '/admin', page: () => AdminPage()),
      ],
    );
  }
}
