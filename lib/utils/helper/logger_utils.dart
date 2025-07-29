import 'dart:io';

import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

class LoggerUtil {
  static Logger? _logger;

  /// Initializes the logger with both console and file output.
  /// This method should be called once at the application startup.
  static Future<void> init() async {
    // Get the application documents directory to store logs.
    final directory = await getApplicationDocumentsDirectory();
    final logFilePath = '${directory.path}/inventory_app/app_logs.txt';

    // Create or open the log file for appending.
    final logFile = File(logFilePath);

    // Configure logger with a pretty printer for formatted output.
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 0, // No method count in logs to keep it clean
        errorMethodCount: 3, // Show 3 methods in error stack traces
        lineLength: 80, // Max line length for readability
        colors: true, // Enable colored output for console
        printEmojis: true, // Use emojis in logs
        noBoxingByDefault: true, // No box around log messages
        dateTimeFormat:
            DateTimeFormat.dateAndTime, // Standard date and time format
      ),
      // Use MultiOutput to send logs to both console and a file.
      output: MultiOutput([
        ConsoleOutput(), // Logs to console
        FileOutput(file: logFile), // Logs to a file
      ]),
      level: Level.debug, // Set the minimum log level to debug
    );
  }

  /// Ensures the logger is initialized before use.
  /// If not initialized, it calls `init()` to set it up.
  static Future<Logger> _getLogger() async {
    if (_logger == null) {
      await init();
    }
    return _logger!;
  }

  /// Private helper method to handle common logging logic.
  /// This method centralizes the repetitive code from all public logging methods.
  static Future<void> _log(
    Level level,
    String logContext,
    String message, {
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    final logger = await _getLogger();
    final prefix = level.toString().split('.').last.toUpperCase();
    logger.log(
      level,
      '$prefix [$logContext] $message',
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Logs a verbose (trace) message.
  static Future<void> logVerbose(
    String logContext,
    String message, {
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    await _log(
      Level.trace,
      logContext,
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Logs a debug message.
  static Future<void> logDebug(
    String logContext,
    String message, {
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    await _log(
      Level.debug,
      logContext,
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Logs an informational message.
  static Future<void> logInfo(
    String logContext,
    String message, {
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    await _log(
      Level.info,
      logContext,
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Logs a warning message.
  static Future<void> logWarn(
    String logContext,
    String message, {
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    await _log(
      Level.warning,
      logContext,
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Logs an error message.
  static Future<void> logError(
    String logContext,
    String message,
    dynamic error, [
    StackTrace? stackTrace,
  ]) async {
    // For error, the 'error' argument is mandatory as per original signature.
    await _log(
      Level.error,
      logContext,
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Logs a fatal (critical) message.
  static Future<void> logFatal(
    String logContext,
    String message, {
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    await _log(
      Level.fatal,
      logContext,
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }
}

/// Custom LogOutput implementation to write log messages to a file.
class FileOutput extends LogOutput {
  final File file;
  FileOutput({required this.file});

  @override
  void output(OutputEvent event) {
    // Join all lines of the log event and append them to the file.
    final lines = event.lines.join('\n');
    file.writeAsStringSync('$lines\n', mode: FileMode.append);
  }
}
