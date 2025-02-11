import 'package:admin_panel/poem_full_view.dart';
import 'package:flutter/material.dart';

import 'full_porem_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Poem Stories"),
      ),
      body: ListView.builder(
        itemCount: FullPoremModel.poem.length,
        itemBuilder: (context, index) {
          PoemModel porm00 = FullPoremModel.poem[index];
          return Card(
            child: ListTile(
              title: Text(porm00.name),
              subtitle: Text(porm00.writterName),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PoemFullView(porm00.name, porm00.fullPoem)));
                  },
                  icon: const Icon(Icons.error_sharp)),
            ),
          );
        },
      ),
    );
  }
}

















/*
import 'package:e_commerce_provider/full_porem_model.dart';
import 'package:e_commerce_provider/poem_full_view.dart';
import 'package:flutter/material.dart';

import 'poem_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lasted Poeam"),
      ),
      body: ListView.builder(
        itemCount: poemSourc.fullporem.length,
        itemBuilder: (context, index) {
          PoemModel poem00 = poemSourc.fullporem[index];
          // poemSourc = poem00 = fullporem.PoemModel[index];
          return Card(
            child: ListTile(
              title: Text(poem00.name),
              subtitle: Text(poem00.writerName),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                PoemFullView(poem00.name, poem00.fullPoem)));
                  },
                  icon: Icon(Icons.error)),
            ),
          );
        },
      ),
    );
  }
}

*/