import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({
    required this.id,
    super.key,
  });

  final String id;

  @override
  State<AnnouncementPage> createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
  final _formUtility = GetIt.instance.get<FormUtilityAbstract>(
    param1: GlobalKey<FormBuilderState>(),
  );
  late final _announcementPageCubit = AnnouncementPageCubit(
    id: widget.id,
  );

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return BlocProvider<AnnouncementPageCubit>(
      create: (context) => _announcementPageCubit,
      child: PAScaffold(
        includePadding: false,
        title: i18n.titleAnnouncementPage,
        leading: IconButton(
          onPressed: () => _announcementPageCubit.back,
          icon: SujudIcon.close(),
        ),
        kids: Kids(
            child: Column(
          children: <Widget>[
            Divider(color: Colors.grey.shade500),
            Expanded(
              child: SingleChildScrollView(
                child:
                    BlocBuilder<AnnouncementPageCubit, AnnouncementPageState>(
                  bloc: _announcementPageCubit,
                  builder: (context, state) => state.when(
                    loading: LoadingStateView.new,
                    ready: (announcement) => Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Selfie(user: announcement.creator),
                                  const SizedBox(width: 10.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                      // _announcementsSubtabCubit
                                      // .showMoreOptions(
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
                              Text(announcement.body),
                              const SizedBox(height: 10.0),
                              if (announcement.images != null &&
                                  announcement.images!.isNotEmpty) ...<Widget>[
                                FutureBuilder(
                                  future: _announcementPageCubit.getImageUrl(
                                    id: announcement.id,
                                    key: announcement.images!.first,
                                  ),
                                  builder: (context, state) {
                                    if (state.connectionState ==
                                        ConnectionState.waiting) {
                                      return const LinearProgressIndicator();
                                    }

                                    if (state.hasError) {
                                      return const Center(
                                          child: Icon(Icons.error));
                                    }

                                    return Container(
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
                              ],
                              AnnouncementActions(
                                announcement: announcement,
                                showComment: false,
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade500),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Selfie(user: announcement.creator),
                              const SizedBox(width: 10.0),
                              Expanded(
                                child: SujudTextField.comment(
                                  context,
                                  formKey: _formUtility.formKey,
                                  fieldName:
                                      _AnnouncementFormFieldName.comment.name,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey.shade500),
                        const SizedBox(width: 20.0),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'Comments',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                    failure: (exception) => FailureStateView(
                      description: i18n.errorGeneric,
                      onTap: () async => await _announcementPageCubit.init(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

enum _AnnouncementFormFieldName {
  comment,
}
