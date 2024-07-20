import 'package:clean_architechture/domain/use_cases/base/base_use_case.dart';

abstract class BaseFutureUseCase<I, O> extends BaseUseCase<I, Future<O>>{
  Future<O> execute(I input) async {
    try {
      final output = buildUseCase(input);
      return output;
    } catch (e) {
      throw Exception(e);
    }
  }
}