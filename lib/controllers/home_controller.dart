import 'package:general/database/database_helper.dart';
import 'package:general/models/model_task.dart';
import 'package:get/get.dart';

DatabaseHelper databaseHelper = DatabaseHelper.instance;

class HomeController extends GetxController {
  List<ModelTask> tasks = <ModelTask>[].obs;

  @override
  void onInit() {
    getTasks();
    super.onInit();
  }

  addTask() {
    ModelTask modelTask = ModelTask(
        title: 'title', description: 'description', dueDate: '07-09-2021');

    databaseHelper.insertTask(modelTask).then(
          (value) => getTasks(),
        );
  }

  getTasks() async {
    tasks.assignAll(
      await databaseHelper.getTasks(),
    );
  }
}
