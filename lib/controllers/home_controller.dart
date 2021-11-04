import 'package:general/controllers/api_controller.dart';
import 'package:general/models/sample_model.dart';
import 'package:get/get.dart';
import 'dart:convert';

class HomeController extends GetxController {
  final apiController = APIController();
  RxString label = "".obs;

  List<String> usersList = [
    "sample 1",
    "sample 2",
    "sample 3",
  ];

  @override
  void onInit() {
    _getInfo();
    super.onInit();
  }

  _getInfo() async {
    var response = await apiController.postSampleData();
    print(response);
  }
}
