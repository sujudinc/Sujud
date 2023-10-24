// 🐦 Flutter imports:
import 'package:cached_network_image/cached_network_image.dart';
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

                return GestureDetector(
                  onTap: () => AnnouncementRoute(
                    id: announcement.id,
                  ).push(context),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1.0,
                      ),
                    ),
                    margin: const EdgeInsets.only(bottom: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Selfie(user: announcement.creator),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    announcement.mosque.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${announcement.creator.firstName} '
                                    '${announcement.creator.lastName}',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            IconButton(
                              icon: const Icon(Icons.more_vert),
                              onPressed: () {
                                // _announcementsSubtabCubit.showMoreOptions(
                                //   announcement,
                                // );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                announcement.title,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              announcement.createdAt!.formattedTimeAgo,
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          announcement.body,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10.0),
                        if (announcement.images != null &&
                            announcement.images!.isNotEmpty)
                          FutureBuilder(
                            future: _announcementsSubtabCubit.getImageUrl(
                              id: announcement.id,
                              key: announcement.images!.first,
                            ),
                            builder: (context, state) {
                              if (state.connectionState ==
                                  ConnectionState.waiting) {
                                return const LinearProgressIndicator();
                              }

                              if (state.hasError) {
                                return const Center(child: Icon(Icons.error));
                              }

                              return Container(
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                      state.data as String,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        const SizedBox(height: 10.0),
                        AnnouncementActions(
                          announcement: announcement,
                        ),
                      ],
                    ),
                  ),
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
