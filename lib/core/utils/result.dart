import '../error/failures.dart';

/// A generic class representing the result of an operation, which can be either
/// a success with data of type T or a failure with a Failure object.
/// This class uses sealed classes to enforce the two possible outcomes.
/// Usage:
/// ```dart
/// Result<int> result = await someOperation();
/// result.when(
///  success: (data) => print('Success with data: $data'),
///  failure: (failure) => print('Failure with error: ${failure.message}'),
///  );
/// ```
sealed class Result<T> {
  const Result();

  const factory Result.success(T data) = Success;
  const factory Result.failure(Failure failure) = Error;

  R when<R>({
    required R Function(T data) success,
    required R Function(Failure failure) failure,
  }) {
    if (this is Success<T>) {
      return success((this as Success<T>).data);
    } else {
      return failure((this as Error<T>).failure);
    }
  }
}

/// Represents a successful result containing data of type T.
/// Use [Result.success] to create an instance.
class Success<T> extends Result<T> {
  final T data;
  const Success(this.data);
}

/// Represents a failed result containing a [Failure] object.
/// Use [Result.failure] to create an instance.
class Error<T> extends Result<T> {
  final Failure failure;
  const Error(this.failure);
}
