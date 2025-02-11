class TodoModel {
  String title;
  bool isDone;

  TodoModel({required this.title, this.isDone = false});

  // Convert to Map for storage
  Map<String, dynamic> toJson() => {'title': title, 'isDone': isDone};

  // Convert from Map
  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      TodoModel(title: json['title'], isDone: json['isDone']);
}
