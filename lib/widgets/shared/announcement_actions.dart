import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/widgets/widgets.dart';

class AnnouncementActions extends StatefulWidget {
  const AnnouncementActions({
    required this.announcement,
    this.showComment = true,
    super.key,
  });

  final Announcement announcement;
  final bool showComment;

  @override
  State<AnnouncementActions> createState() => _AnnouncementActionsState();
}

class _AnnouncementActionsState extends State<AnnouncementActions> {
  late final _announcementActionsCubit = AnnouncementActionsCubit(
    announcement: widget.announcement,
  );

  @override
  Widget build(BuildContext context) => BlocProvider<AnnouncementActionsCubit>(
        create: (_) => _announcementActionsCubit,
        child: BlocBuilder<AnnouncementActionsCubit, AnnouncementActionsState>(
          bloc: _announcementActionsCubit,
          builder: (context, state) => state.when(
            ready: (isLiked, isBookmarked) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () async {
                    await _announcementActionsCubit.toggleLike();
                  },
                  icon: SujudIcon.like(isFilled: isLiked),
                ),
                const SizedBox(width: 10.0),
                if (widget.showComment) ...<Widget>[
                  IconButton(
                    onPressed: () {
                      AnnouncementRoute(id: widget.announcement.id)
                          .push(context);
                    },
                    icon: SujudIcon.comment(),
                  ),
                  const SizedBox(width: 10.0),
                ],
                IconButton(
                  onPressed: () async {
                    _announcementActionsCubit.share();
                  },
                  icon: SujudIcon.share(),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () async {
                    await _announcementActionsCubit.toggleBookmark();
                  },
                  icon: SujudIcon.bookmark(isFilled: isBookmarked),
                ),
              ],
            ),
          ),
        ),
      );
}
