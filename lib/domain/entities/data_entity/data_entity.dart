import 'package:clean_architechture/domain/entities/error_entity.dart';

class DataResponseEntity<T> {
  final ErrorEntity? error;
  final T? data;

  DataResponseEntity({this.error, this.data});
}