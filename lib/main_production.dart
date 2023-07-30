// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:sujud/configs/configs.dart';
import 'package:sujud/sujud_app.dart';

Future<void> main() async {
  await initDependencies();
  await dotenv.load(fileName: 'env.production');

  runApp(
    HookedBlocConfigProvider(
      injector: () => GetIt.instance.get,
      builderCondition: (state) => state != null,
      listenerCondition: (state) => state != null,
      child: ProviderScope(
        child: SujudApp(
          environment: Environment.production,
        ),
      ),
    ),
  );
}
