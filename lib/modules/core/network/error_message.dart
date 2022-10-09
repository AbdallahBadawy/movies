import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final String StatusMessage;
  final bool success;

  const ErrorMessageModel({
    required this.statusCode,
    required this.StatusMessage,
    required this.success,
  });
  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      statusCode: json["status-code"],
      StatusMessage: json["status-message"],
      success: json["success"],
    );
  }

  @override
  
  List<Object?> get props => [
        statusCode,
        StatusMessage,
        success,
      ];
}
