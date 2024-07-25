import 'package:clean_architechture/data/base/data_error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class DataResponse<T> {
  final DataError? error;
  final T? data;

  DataResponse({this.data, this.error});

  factory DataResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$DataResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(T Function(Object? json) toJsonO) => _$DataResponseToJson(this, toJsonO);
}

@JsonSerializable(genericArgumentFactories: true)
class DataListResponse<T> {
  final int? code;
  final String? message;
  final List<T>? data;

  DataListResponse({required this.code, required this.message, required this.data});

  factory DataListResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$DataListResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(T Function(Object? json) toJsonO) => _$DataListResponseToJson(this, toJsonO);
}
