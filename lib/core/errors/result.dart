import 'package:ram_demo_app/core/errors/failures.dart';

sealed class Result<S, F extends Failure> {
  const Result();

  T fold<T>(T Function(F failure) onFailure, T Function(S data) onSuccess) =>
      switch (this) {
        Success(value: final v) => onSuccess(v),
        FailureResult(failure: final f) => onFailure(f),
      };

  Result<S, F> onFailure(void Function(F failure) action) {
    if (this case FailureResult(failure: final f)) {
      action(f);
    }
    return this;
  }

  Result<S, F> onSuccess(void Function(S data) action) {
    if (this case Success(value: final v)) {
      action(v);
    }
    return this;
  }

  bool get isSuccess => this is Success<S, F>;
  bool get isFailure => this is FailureResult<S, F>;
}

final class Success<S, F extends Failure> extends Result<S, F> {
  const Success(this.value);
  final S value;
}

final class FailureResult<S, F extends Failure> extends Result<S, F> {
  const FailureResult(this.failure);
  final F failure;
}
