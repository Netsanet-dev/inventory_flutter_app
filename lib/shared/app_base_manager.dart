// lib/shared/base_manager.dart
import 'dart:async';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';
import 'package:inventory_flutter_app/utils/helper/result_message.dart';

/// An abstract base class providing common helper methods for managers,
/// including centralized error handling and logging via LoggerUtil.
abstract class BaseManager {
  /// Helper for methods that perform an action and don't return a value,
  /// or return Future\<void>. It logs success or failure.
  ///
  /// [action]: The asynchronous function to execute.
  /// [context]: A string describing the operation for logging purposes.
  /// [id]: An optional identifier related to the operation.
  Future<void> call(
    dynamic
    action, // Can be Future<void> Function() or Future<void> Function(String?)
    String context, [
    String? id,
  ]) async {
    try {
      if (action is Future<void> Function(String?)) {
        await action(id);
      } else if (action is Future<void> Function()) {
        await action();
      } else {
        LoggerUtil.logError(
          'BaseManager',
          'Invalid action type provided for $context',
          ArgumentError('Action must be a function returning Future<void>'),
        );
        throw ArgumentError('Action must be a function returning Future<void>');
      }
      LoggerUtil.logInfo(
        'BaseManager',
        '$context succeeded ${id != null ? '($id)' : ''}',
      );
    } catch (e, s) {
      LoggerUtil.logError(
        'BaseManager',
        'Failed to $context ${id != null ? '($id)' : ''}',
        e,
        s,
      );
      rethrow;
    }
  }

  /// Helper for methods that fetch a single item and return it.
  /// It logs success or returns null on failure after logging the error.
  ///
  /// [getter]: The asynchronous function to get the item.
  /// [context]: A string describing the operation for logging purposes.
  /// [id]: An optional identifier related to the item being fetched.
  Future<T?> get<T>(
    Future<T?> Function() getter,
    String context, [
    String? id,
  ]) async {
    try {
      return await getter();
    } catch (e, s) {
      LoggerUtil.logError(
        'BaseManager',
        'Failed to $context ${id != null ? '($id)' : ''}',
        e,
        s,
      );
      return null;
    }
  }

  /// Helper for methods that fetch a list of items.
  /// It logs success or returns an empty list on failure after logging the error.
  ///
  /// [getter]: The asynchronous function to get the list of items.
  /// [context]: A string describing the operation for logging purposes.
  Future<List<T>> list<T>(
    Future<List<T>> Function() getter,
    String context,
  ) async {
    try {
      return await getter();
    } catch (e, s) {
      LoggerUtil.logError('BaseManager', 'Failed to $context', e, s);
      return [];
    }
  }

  /// Helper for methods that perform a boolean check (e.g., item exists).
  /// It logs success or returns false on failure after logging the error.
  ///
  /// [checker]: The asynchronous function to perform the boolean check.
  /// [context]: A string describing the operation for logging purposes.
  /// [id]: An optional identifier related to the item being checked.
  Future<bool> boolCheck(
    Future<bool> Function() checker,
    String context, [
    String? id,
  ]) async {
    try {
      return await checker();
    } catch (e, s) {
      LoggerUtil.logError(
        'BaseManager',
        'Failed to $context ${id != null ? '($id)' : ''}',
        e,
        s,
      );
      return false;
    }
  }

  /// Helper for methods that perform an action and return a specific value.
  /// It logs success or re-throws the exception on failure after logging the error.
  ///
  /// [action]: The asynchronous function to execute and return a value.
  /// [context]: A string describing the operation for logging purposes.
  Future<T> callWithReturn<T>(
    Future<T> Function() action,
    String context,
  ) async {
    try {
      return await action();
    } catch (e, s) {
      LoggerUtil.logError('BaseManager', 'Failed to $context', e, s);
      rethrow;
    }
  }

  /// **New:** Helper for methods that return a `Result` type.
  /// It wraps the action's execution in a try-catch and returns
  /// `Result.success` on success or `Result.failure` on error,
  /// including logging.
  ///
  /// [action]: The asynchronous function to execute, returning a `T` on success.
  /// [context]: A string describing the operation for logging purposes.
  /// [id]: An optional identifier related to the operation.
  Future<Result<T>> callServiceWithResult<T>(
    Future<Result<T>> Function()
    action, // <--- Key change here: Expects Future<Result<T>>
    String context, [
    String? id,
  ]) async {
    try {
      final result = await action(); // Await the Result from the service/action

      if (result.isSuccess) {
        LoggerUtil.logInfo(
          'BaseManager',
          '$context succeeded ${id != null ? '($id)' : ''}',
        );
      } else {
        // If the Result itself is a failure, log it here from the BaseManager perspective
        LoggerUtil.logWarn(
          'BaseManager',
          'Failed to $context ${id != null ? '($id)' : ''}: ${result.error}',
        );
      }
      return result; // Return the Result directly
    } catch (e, s) {
      // This catch block handles unexpected exceptions that might occur
      // *before* the action returns a Result (e.g., a network error before service call completes).
      LoggerUtil.logError(
        'BaseManager',
        'Unexpected error during $context ${id != null ? '($id)' : ''}',
        e,
        s,
      );
      // Return a new failure Result for this unexpected error
      return Result.failure(
        'Unexpected error during $context: ${e.toString()}',
      );
    }
  }
}
