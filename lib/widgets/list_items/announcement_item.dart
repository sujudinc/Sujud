// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

// 🌎 Project imports:
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/pages/pages.dart';
import 'package:sujud/widgets/widgets.dart';

class AnnouncementItem extends StatefulWidget {
  const AnnouncementItem({
    required this.announcement,
    this.onTap,
    this.listMode = true,
    super.key,
  });

  final Announcement announcement;
  final GestureTapCallback? onTap;
  final bool listMode;

  @override
  State<AnnouncementItem> createState() => _AnnouncementItemState();
}

class _AnnouncementItemState extends State<AnnouncementItem> {
  @override
  Widget build(BuildContext context) {
    final announcement = widget.announcement;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: widget.listMode
            ? const EdgeInsets.all(10.0)
            : const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: widget.listMode
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
              )
            : null,
        margin: widget.listMode ? const EdgeInsets.only(bottom: 15.0) : null,
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
            if (announcement.images != null && announcement.images!.isNotEmpty)
              _AnnouncementMedia(
                announcement: announcement,
              ),
            const SizedBox(height: 10.0),
            AnnouncementActions(
              announcement: announcement,
            ),
          ],
        ),
      ),
    );
  }
}

class _AnnouncementMedia extends StatefulWidget {
  const _AnnouncementMedia({
    required this.announcement,
  });

  final Announcement announcement;

  @override
  State<_AnnouncementMedia> createState() => __AnnouncementMediaState();
}

class __AnnouncementMediaState extends State<_AnnouncementMedia> {
  late final _getUrlsCubit = GetUrlsCubit(
    id: widget.announcement.id,
    keys: widget.announcement.images!,
  );

  @override
  Widget build(BuildContext context) => BlocBuilder<GetUrlsCubit, GetUrlsState>(
        bloc: _getUrlsCubit,
        builder: (context, state) => state.when(
          initial: () => const LinearProgressIndicator(),
          loading: () => const LinearProgressIndicator(),
          ready: (urls) => urls.length == 1
              ? SizedBox(
                  height: 200.0,
                  child: _Media(url: urls.first),
                )
              : Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: urls
                      .map(
                        (url) => SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 31,
                          height: 100.0,
                          child: _Media(url: url),
                        ),
                      )
                      .toList(),
                ),
          failure: (error) => const Center(
            child: Icon(Icons.error),
          ),
        ),
      );
}

class _Media extends StatelessWidget {
  const _Media({
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => rootNavigatorKey.currentState!.push(
          PageTransition(
            type: PageTransitionType.fade,
            child: MediaPage(
              url: url,
            ),
          ),
        ),
        child: Hero(
          tag: url,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: url,
            ),
          ),
        ),
      );
}
