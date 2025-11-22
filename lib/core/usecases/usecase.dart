import '../utils/result.dart';

/// Generic UseCase class to be extended by specific use cases.
abstract class UseCase<T, Params> {
  Future<Result<T>> call(Params params);
}

/// Class representing no parameters for use cases that do not require any.
class NoParams {
  const NoParams();
}
