class Result<T> {
  final T? data;
  final String? error;
  final bool isSuccess;
  final String? errorCode;

  /// Private constructor for success.
  Result.success(this.data) : isSuccess = true, error = null, errorCode = null;

  /// Private constructor for failure.
  Result.failure(this.error, {this.errorCode}) : isSuccess = false, data = null;

  /// Getter to check if the result is a success.
  bool get isFailure => !isSuccess;
}