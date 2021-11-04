import 'package:general/controllers/exception_controller.dart';
import 'package:general/models/sample_model.dart';
import 'package:general/services/base_client.dart';

class APIController with ExceptionController {
  Future<dynamic> getSampleData() async {
    var response =
        await BaseClientHelper().get('todos/1').catchError(handleError);
    if (response == null) return;
    print(response);
    return sampleModelFromJson(response);
  }

  Future<dynamic> postSampleData() async {
    var payload = {"name": "sample"};
    var response = await BaseClientHelper()
        .post('todos/1', payload)
        .catchError(handleError);
    if (response == null) return;
    print(response);
    return sampleModelFromJson(response);
  }
}
