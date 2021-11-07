import 'package:general/models/model_task.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static DatabaseHelper instance = DatabaseHelper._createInstance();

  DatabaseHelper._createInstance();

  final String _databaseName = 'task.db';
  final int _databaseVersion = 1;

  Future<Database> get database async {
    if (_database != null) return database;
    return await initializeDatabase();
  }

  Future<Database> initializeDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _databaseName);

    var database = await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: (db, version) {
        db.execute('''
          create table $tableTask ( 
          ${TaskFields.id} integer primary key autoincrement, 
          ${TaskFields.title} text not null,
          ${TaskFields.description} text,
          ${TaskFields.due} text)
        ''');
      },
    );

    return database;
  }

  Future<int> insertTask(ModelTask modelTask) async {
    var db = await this.database;
    return await db.insert(tableTask, modelTask.toJson());
  }

  Future<List<ModelTask>> getTasks() async {
    List<ModelTask> _tasks = [];

    var db = await this.database;
    var result = await db.query(tableTask);
    result.forEach((element) {
      var task = ModelTask.fromJson(element);
      _tasks.add(task);
    });

    return _tasks;
  }
}
