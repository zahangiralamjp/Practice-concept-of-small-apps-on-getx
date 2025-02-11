import 'package:flutter/material.dart';

class PoemFullView extends StatefulWidget {
  String writterName;
  String fullPoem;
  PoemFullView(this.writterName, this.fullPoem);

  @override
  State<PoemFullView> createState() => _PoemFullViewState();
}

class _PoemFullViewState extends State<PoemFullView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.writterName),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(widget.fullPoem),
        ),
      ),
    );
  }
}
