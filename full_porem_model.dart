class PoemModel {
  String name;
  String writterName;
  String fullPoem;

  PoemModel(this.name, this.writterName, this.fullPoem);
}

class FullPoremModel {
  static List<PoemModel> poem = [
    // PoemModel(name, writterName, fullPoem),
    PoemModel("Luran 01", "Mr Luram",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),

    PoemModel("Luran 02", "Mr Luram",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),

    PoemModel("Luran 03", "Mr Luram",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  ];
}















/*
import 'package:e_commerce_provider/poem_model.dart';

class poemSourc {
  static List<PoemModel> fullporem = [
    //  PoemModel(name, writerName, fullPoem)
    PoemModel("A Porem", "MD. Alina", "This is one porem"),
    PoemModel("B Porem", "Mrs. Parbin", "This is Two porem"),
    PoemModel("V Porem", "MD Salam", "This is Three porem"),
    PoemModel("D Porem", "Mrs. Marina", "This is Four porem"),
    PoemModel("E Porem", "MD Pinqu", "This is Five porem"),
  ];
}

*/