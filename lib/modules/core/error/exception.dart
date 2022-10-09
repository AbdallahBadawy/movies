import 'package:movie_app/modules/core/network/error_message.dart';

class Serverexception implements Exception {
  final ErrorMessageModel errorMessageModel;

  const Serverexception({
    required this.errorMessageModel,
  });
}
