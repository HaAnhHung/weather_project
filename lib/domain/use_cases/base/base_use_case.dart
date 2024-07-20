abstract class BaseUseCase<I, O> {
  O buildUseCase(I input);
}