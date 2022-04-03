import 'package:foot_ball_match/utills/constant.dart';

class CustomException implements Exception {
  final _message;
  final _prefix;

  CustomException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends CustomException {
  FetchDataException([String? message])
      : super(message, Constant.errorDuringCommunication);
}

class BadRequestException extends CustomException {
  BadRequestException([message]) : super(message, Constant.invalidRequest);
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([message]) : super(message, Constant.unauthorised);
}

class InvalidInputException extends CustomException {
  InvalidInputException([String? message])
      : super(message, Constant.invalidInput);
}
