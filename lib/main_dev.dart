// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
// 🌎 Project imports:
import 'package:sujud/configs/configs.dart';
import 'package:sujud/sujud_app.dart';

Future<void> main() async {
  await initDependencies();
  await dotenv.load(fileName: 'env.development');

  runApp(
    SujudApp(
      environment: Environment.development,
    ),
  );
}
