import 'package:general/controllers/exception_controller.dart';
import 'package:general/services/base_client.dart';

class APIController with ExceptionController {
  Future<dynamic> getWeatherInfo() async {
    var response =
        await BaseClientHelper().get('todos/1').catchError(handleError);
    if (response == null) return;
    print(response);
    return response;
  }

  // Future<dynamic> postSampleData() async {
//   var payload = {"name": "sample"};
//   var response = await BaseClientHelper()
//       .post('posts', payload)
//       .catchError(handleError);
//   if (response == null) return null;
//   print(response);
//   return response;
// }
}
