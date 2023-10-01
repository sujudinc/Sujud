// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
// 🌎 Project imports:
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class AnnouncementsSubtab extends StatefulWidget {
  const AnnouncementsSubtab({super.key});

  @override
  State<AnnouncementsSubtab> createState() => _AnnouncementsSubtabState();
}

class _AnnouncementsSubtabState extends State<AnnouncementsSubtab>
    with AutomaticKeepAliveClientMixin {
  final _announcementsSubtabCubit = AdminAnnouncementsSubtabCubit();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final i18n = context.i18n;

    return BlocProvider<AdminAnnouncementsSubtabCubit>(
      create: (context) => _announcementsSubtabCubit,
      child: Scaffold(
        body: BlocBuilder<AdminAnnouncementsSubtabCubit,
            AdminAnnouncementsSubtabState>(
          bloc: _announcementsSubtabCubit,
          builder: (context, state) => state.when(
            loading: LoadingStateView.new,
            empty: () => EmptyStateView(
              title: i18n.messageCreateAnnouncementPage,
              description: i18n.descriptionCreateAnnouncementPage,
              buttonLabel: i18n.buttonCreateAnnouncement,
              onTap: () {
                _announcementsSubtabCubit.goToCreateAnnouncementPage;
              },
            ),
            ready: (announcements) => ListView.builder(
              itemBuilder: (context, index) {
                final announcement = announcements[index];

                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(announcement.title),
                      subtitle: Text(announcement.body),
                      trailing: Text(announcement.createdAt!.formattedTimeAgo),
                      mouseCursor: SystemMouseCursors.click,
                    ),
                  ],
                );
              },
              itemCount: announcements.length,
            ),
            failure: () => FailureStateView(
              description: i18n.errorGeneric,
              onTap: () async => await _announcementsSubtabCubit.hydrate(),
            ),
          ),
        ),
        floatingActionButton: BlocBuilder<AdminAnnouncementsSubtabCubit,
            AdminAnnouncementsSubtabState>(
          builder: (context, state) =>
              state is AdminAnnouncementsSubtabStateLoading
                  ? const SizedBox()
                  : FloatingActionButton(
                      onPressed: () {
                        _announcementsSubtabCubit.goToCreateAnnouncementPage;
                      },
                      child: SujudIcon.add(),
                    ),
        ),
      ),
    );
  }
}
