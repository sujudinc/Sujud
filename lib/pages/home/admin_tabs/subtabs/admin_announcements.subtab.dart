// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class AdminAnnouncementsSubtab extends StatefulWidget {
  const AdminAnnouncementsSubtab({super.key});

  @override
  State<AdminAnnouncementsSubtab> createState() =>
      _AdminAnnouncementsSubtabState();
}

class _AdminAnnouncementsSubtabState extends State<AdminAnnouncementsSubtab>
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
              onTap: () => const CreateAnnouncementRoute().push(context),
            ),
            ready: (announcements) => ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 15.0,
              ),
              itemBuilder: (context, index) {
                final announcement = announcements[index];

                return AnnouncementItem(
                  announcement: announcement,
                  onTap: () => AdminAnnouncementRoute(
                    id: announcement.id,
                  ).push(context),
                );
              },
              itemCount: announcements.length,
            ),
            failure: () => FailureStateView(
              description: i18n.errorGeneric,
              onTap: () async => await _announcementsSubtabCubit.init(),
            ),
          ),
        ),
        floatingActionButton: BlocBuilder<AdminAnnouncementsSubtabCubit,
            AdminAnnouncementsSubtabState>(
          builder: (context, state) =>
              state is AdminAnnouncementsSubtabStateLoading
                  ? const SizedBox()
                  : FloatingActionButton(
                      onPressed: () =>
                          const CreateAnnouncementRoute().push(context),
                      child: SujudIcon.add(),
                    ),
        ),
      ),
    );
  }
}
