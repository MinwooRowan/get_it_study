import 'dart:async';
import 'result.dart';

typedef CommandAsyncAction0<T> = Future<Result<T>> Function();
typedef CommandAsyncAction1<T, A> = Future<Result<T>> Function(A);

typedef CommandAction0<T> = Result<T> Function();
typedef CommandAction1<T, A> = Result<T> Function(A);

/// Facilitates interaction with a ViewModel.
///
/// Encapsulates an action,
/// exposes its running and error states,
/// and ensures that it can't be launched again until it finishes.
///
/// Use [AsyncCommand0] for actions without arguments.
/// Use [AsyncCommand1] for actions with one argument.
///
/// Actions must return a [Result].
///
/// Consume the action result by listening to changes,
/// then call to [clearResult] when the state is consumed.
abstract class Command<T> {
  Command();

  bool _running = false;

  /// True when the action is running.
  bool get running => _running;

  Result<T>? _result;

  /// true if action completed with error
  bool get error => _result is Error;

  /// true if action completed successfully
  bool get completed => _result is Ok;

  /// Get last action result
  Result? get result => _result;

  /// Clear last action result
  void clearResult() {
    _result = null;
  }

  void _execute(CommandAction0<T> action) {
    if (_running) return;

    _running = true;
    _result = null;

    try {
      _result = action();
    } finally {
      _running = false;
    }
  }

  /// Internal execute implementation
  Future<void> _asyncExecute(CommandAsyncAction0<T> action) async {
    if (_running) return;

    _running = true;
    _result = null;

    try {
      _result = await action();
    } finally {
      _running = false;
    }
  }
}

class Command0<T> extends Command<T> {
  Command0(this._action);

  final CommandAction0<T> _action;

  void execute() {
    _execute(() => _action());
  }
}

class Command1<T, A> extends Command<T> {
  Command1(this._action);

  final CommandAction1<T, A> _action;

  void execute(A argument) {
    _execute(() => _action(argument));
  }
}

/// [Command] without arguments.
/// Takes a [CommandAsyncAction0] as action.
class AsyncCommand0<T> extends Command<T> {
  AsyncCommand0(this._action);

  final CommandAsyncAction0<T> _action;

  /// Executes the action.
  Future<void> execute() async {
    await _asyncExecute(() => _action());
  }
}

/// [Command] with one argument.
/// Takes a [CommandAsyncAction1] as action.
class AsyncCommand1<T, A> extends Command<T> {
  AsyncCommand1(this._action);

  final CommandAsyncAction1<T, A> _action;

  /// Executes the action with the argument.
  Future<void> execute(A argument) async {
    await _asyncExecute(() => _action(argument));
  }
}
