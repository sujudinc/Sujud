abstract class LoggerUtilityAbstract {
  void log(message, {LogLevel level = LogLevel.debug});
}

enum LogLevel {
  errors,
  warnings,
  trace,
  debug,
}
