// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class AdminAnnouncementPage extends StatefulWidget {
  const AdminAnnouncementPage({
    required this.id,
    super.key,
  });

  final String id;

  @override
  State<AdminAnnouncementPage> createState() => _AdminAnnouncementPageState();
}

class _AdminAnnouncementPageState extends State<AdminAnnouncementPage> {
  final _formUtility = GetIt.instance.get<FormUtilityAbstract>(
    param1: GlobalKey<FormBuilderState>(),
  );
  late final _adminAnnouncementPageCubit = AdminAnnouncementPageCubit(
    id: widget.id,
  );

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return BlocProvider<AdminAnnouncementPageCubit>(
      create: (context) => _adminAnnouncementPageCubit,
      child: PAScaffold(
        includePadding: false,
        title: i18n.titleAnnouncementPage,
        leading: IconButton(
          onPressed: () => _adminAnnouncementPageCubit.back,
          icon: SujudIcon.close(),
        ),
        kids: Kids(
            child: Column(
          children: <Widget>[
            Divider(color: Colors.grey.shade500),
            Expanded(
              child: SingleChildScrollView(
                child: BlocBuilder<AdminAnnouncementPageCubit,
                    AdminAnnouncementPageState>(
                  bloc: _adminAnnouncementPageCubit,
                  builder: (context, state) => state.when(
                    loading: LoadingStateView.new,
                    ready: (announcement) => Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        AnnouncementItem(
                          announcement: announcement,
                          listMode: false,
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
                      onTap: () async =>
                          await _adminAnnouncementPageCubit.init(),
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
