import 'package:general/helpers/dialog_helper.dart';
import 'package:general/services/exceptions.dart';

class ExceptionController {
  void handleError(error) {
    if (error is FetchDataException) {
      var message = error.message;
      DialogHelper.showDialog(message: message);
    } else {
      var message = error.message;
      DialogHelper.showDialog(message: message);
    }
  }
}
