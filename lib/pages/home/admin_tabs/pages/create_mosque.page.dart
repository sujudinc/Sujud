// 🎯 Dart imports:
import 'dart:convert';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class CreateMosquePage extends StatefulWidget {
  const CreateMosquePage({super.key});

  @override
  State<CreateMosquePage> createState() => _CreateMosquePageState();
}

class _CreateMosquePageState extends State<CreateMosquePage> {
  final _createMosquePageCubit = CreateMosquePageCubit();

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return BlocProvider<CreateMosquePageCubit>(
      create: (context) => _createMosquePageCubit,
      child: BlocConsumer<CreateMosquePageCubit, CreateMosquePageState>(
        bloc: _createMosquePageCubit,
        listener: (context, state) => state.whenOrNull(
          failure: (exception) => _createMosquePageCubit
              .displayToast(
                title: i18n.errorTitle,
                message: exception.name,
              )
              .show(context),
        ),
        builder: (context, state) => PAScaffold(
          title: i18n.titleCreateMosque,
          leading: IconButton(
            onPressed: () => _createMosquePageCubit.back,
            icon: SujudIcon.close(),
          ),
          kids: Kids(
            child: ListView(
              children: <Widget>[
                Text(
                  i18n.messageCreateMosqueForm,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20.0),
                CreateMosqueListItem(
                  icon: Icons.mosque_outlined,
                  title: i18n.hintMosqueName,
                  subTitle: _createMosquePageCubit.name,
                  onTap: () async {
                    final name = await _createMosquePageCubit.goToFieldPage(
                      fieldName: MosqueFormFieldName.name.name,
                      initialValue: _createMosquePageCubit.name,
                    );

                    _createMosquePageCubit.name = name;
                  },
                ),
                CreateMosqueListItem(
                  icon: Icons.description_outlined,
                  title: i18n.hintMosqueDescription,
                  subTitle: _createMosquePageCubit.description,
                  onTap: () async {
                    final description =
                        await _createMosquePageCubit.goToFieldPage(
                      fieldName: MosqueFormFieldName.description.name,
                      initialValue: _createMosquePageCubit.description,
                    );

                    _createMosquePageCubit.description = description;
                  },
                ),
                CreateMosqueListItem(
                  icon: Icons.image_outlined,
                  title: i18n.hintMosqueImages,
                  subChild: _createMosquePageCubit.images.isEmpty
                      ? null
                      : Row(
                          children: _createMosquePageCubit.images
                              .map<Widget>(
                                (image) => Image.memory(
                                  image.file,
                                  width: 200.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              )
                              .toList(),
                        ),
                  onTap: () async {
                    final images = await _createMosquePageCubit.goToFieldPage(
                      fieldName: MosqueFormFieldName.images.name,
                      initialValue: _createMosquePageCubit.images.isEmpty
                          ? null
                          : jsonEncode(_createMosquePageCubit.images),
                    );

                    if (images == null) {
                      return;
                    }

                    _createMosquePageCubit.images = images;
                  },
                ),
                CreateMosqueListItem(
                  icon: Icons.pin_drop_outlined,
                  title: i18n.hintMosqueLocation,
                  subTitle: _createMosquePageCubit.location?.address,
                  onTap: () async {
                    final location = await _createMosquePageCubit.goToFieldPage(
                      fieldName: MosqueFormFieldName.location.name,
                      initialValue: _createMosquePageCubit.location == null
                          ? null
                          : jsonEncode(
                              _createMosquePageCubit.location?.toJson(),
                            ),
                    );

                    if (location == null) {
                      return;
                    }

                    _createMosquePageCubit.location = location;
                  },
                ),
                // CreateMosqueListItem(
                //   icon: Icons.access_time,
                //   title: i18n.hintMosqueHours,
                //   subTitle: _createMosquePageCubit.hours?.toUserString(),
                //   onTap: () async {
                //     final hours = await _createMosquePageCubit.goToFieldPage(
                //       fieldName: MosqueFormFieldName.hours.name,
                //       initialValue: _createMosquePageCubit.hours == null
                //           ? null
                //           : jsonEncode(
                //               _createMosquePageCubit.hours?.toJson(),
                //             ),
                //     );
                //
                //     if (hours == null) {
                //       return;
                //     }
                //
                //     _createMosquePageCubit.hours = hours;
                //   },
                // ),
                CreateMosqueListItem(
                  icon: Icons.contacts_outlined,
                  title: i18n.hintMosqueContactInfo,
                  subTitle: _createMosquePageCubit.contactInfo
                      ?.toUserFriendlyString(),
                  isLast: true,
                  onTap: () async {
                    final contactInfo =
                        await _createMosquePageCubit.goToFieldPage(
                      fieldName: MosqueFormFieldName.contactInfo.name,
                      initialValue: _createMosquePageCubit.contactInfo == null
                          ? null
                          : jsonEncode(
                              _createMosquePageCubit.contactInfo?.toJson(),
                            ),
                    );

                    if (contactInfo == null) {
                      return;
                    }

                    _createMosquePageCubit.contactInfo = contactInfo;
                  },
                ),
                const SizedBox(height: 20.0),
                state is CreateMosquePageStateLoading
                    ? const PALoadingIndicator()
                    : SujudButton(
                        text: i18n.buttonComplete,
                        outlined: false,
                        onTap: () async =>
                            await _createMosquePageCubit.create(),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
