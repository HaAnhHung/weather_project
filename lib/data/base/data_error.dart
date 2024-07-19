import 'package:json_annotation/json_annotation.dart';

part 'data_error.g.dart';

@JsonSerializable()
class DataError {
  final Error? error;

  DataError({required this.error});

  factory DataError.fromJson(Map<String, dynamic> json) => _$DataErrorFromJson(json);

  Map<String, dynamic> toJson() => _$DataErrorToJson(this);
}

@JsonSerializable()
class Error {
  final int? code;
  final String? message;

  Error({required this.code, required this.message});

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}