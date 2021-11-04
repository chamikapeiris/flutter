class Exceptions implements Exception {
  final String message;
  final String prefix;
  final String url;

  Exceptions(this.message, this.prefix, this.url);
}

class BadRequestException extends Exceptions {
  BadRequestException(String message, String url)
      : super(message, 'Bad Request', url);
}

class FetchDataException extends Exceptions {
  FetchDataException(String message, String url)
      : super(message, 'Unable to process', url);
}

class TimeOutException extends Exceptions {
  TimeOutException(String message, String url)
      : super(message, 'Time out...', url);
}
