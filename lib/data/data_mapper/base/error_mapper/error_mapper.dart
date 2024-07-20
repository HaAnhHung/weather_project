import 'package:clean_architechture/data/base/data_error.dart';
import 'package:clean_architechture/data/data_mapper/base/base_data_mapper.dart';
import 'package:clean_architechture/domain/entities/error_entity.dart';

class ErrorMapper extends BaseDataMapper<ErrorEntity, DataError> {
  @override
  ErrorEntity mapToEntity(DataError? data) {
    return ErrorEntity(
      errorCode: data?.error?.code,
      message: data?.error?.message
    );
  }

}