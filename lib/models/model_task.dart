import 'dart:convert';

ModelTask modelTaskFromJson(String str) => ModelTask.fromJson(json.decode(str));

String modelTaskToJson(ModelTask data) => json.encode(data.toJson());

final String tableTask = 'tasks';

class TaskFields {
  static final String id = '_id';
  static final String title = 'title';
  static final String description = 'description';
  static final String due = 'due_date';
}

class ModelTask {
  ModelTask({
    this.id,
    required this.title,
    required this.description,
    required this.dueDate,
  });

  int? id;
  String title;
  String description;
  String dueDate;

  factory ModelTask.fromJson(Map<String, dynamic> json) => ModelTask(
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        dueDate: json["due_date"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "description": description,
        "due_date": dueDate,
      };
}
