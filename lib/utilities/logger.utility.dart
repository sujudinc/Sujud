// 📦 Package imports:
import 'package:logger/logger.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class LoggerUtility implements LoggerUtilityAbstract {
  LoggerUtility({Logger? logger})
      : _logger = logger ??
            Logger(
              printer: PrettyPrinter(
                colors: true,
                printEmojis: true,
                printTime: true,
              ),
            );

  final Logger _logger;

  @override
  Logger get logger => _logger;

  @override
  void log(message, {LogLevel level = LogLevel.debug}) {
    switch (level) {
      case LogLevel.error:
        return _logger.e(message);
      case LogLevel.warning:
        return _logger.w(message);
      case LogLevel.trace:
        return _logger.t(message);
      case LogLevel.debug:
        return _logger.d(message);
    }
  }
}
