// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab>
    with AutomaticKeepAliveClientMixin {
  final _settingsTabCubit = SettingsTabCubit();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final i18n = context.i18n;

    return BlocProvider<SettingsTabCubit>(
      create: (context) => _settingsTabCubit,
      child: PAScaffold(
        title: i18n.titleSettings,
        kids: Kids(
          child: BlocBuilder<SettingsTabCubit, SettingsTabState>(
            builder: (context, state) => ListView(
              children: <Widget>[
                ListTile(
                  title: Text(i18n.logout),
                  subtitle: state is SettingsTabStateLoadingLogout
                      ? const LinearProgressIndicator()
                      : null,
                  onTap: () async => await _settingsTabCubit.logout(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
