import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return BlocProvider<CreateMosquePageCubit>(
      create: (context) => CreateMosquePageCubit(),
      child: BlocBuilder<CreateMosquePageCubit, CreateMosquePageState>(
        builder: (context, state) {
          final cubit = context.read<CreateMosquePageCubit>();

          return BlocListener<CreateMosquePageCubit, CreateMosquePageState>(
            bloc: cubit,
            listener: (context, state) => state.whenOrNull(
              failure: (exception) => cubit
                  .displayToast(
                    title: i18n.errorTitle,
                    message: exception.name,
                  )
                  .show(context),
            ),
            child: Stack(
              children: <Widget>[
                PAScaffold(
                  title: i18n.titleCreateMosque,
                  leading: IconButton(
                    onPressed: () => cubit.back,
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
                          subTitle: cubit.name,
                          onTap: () async {
                            final name = await cubit.goToFieldPage(
                              fieldName: MosqueFormFieldName.name.name,
                              initialValue: cubit.name,
                            );

                            cubit.name = name;
                          },
                        ),
                        CreateMosqueListItem(
                          icon: Icons.description_outlined,
                          title: i18n.hintMosqueDescription,
                          subTitle: cubit.description,
                          onTap: () async {
                            final description = await cubit.goToFieldPage(
                              fieldName: MosqueFormFieldName.description.name,
                              initialValue: cubit.description,
                            );

                            cubit.description = description;
                          },
                        ),
                        CreateMosqueListItem(
                          icon: Icons.image_outlined,
                          title: i18n.hintMosqueImages,
                          subChild: cubit.images.isEmpty
                              ? null
                              : Row(
                                  children: cubit.images
                                      .map<Widget>(
                                        (image) => Image.memory(
                                          image,
                                          width: 200.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                      .toList(),
                                ),
                          onTap: () async {
                            final images = await cubit.goToFieldPage(
                              fieldName: MosqueFormFieldName.images.name,
                              initialValue: cubit.images.isEmpty
                                  ? null
                                  : jsonEncode(cubit.images),
                            );

                            if (images == null) {
                              return;
                            }

                            cubit.images = images;
                          },
                        ),
                        CreateMosqueListItem(
                          icon: Icons.pin_drop_outlined,
                          title: i18n.hintMosqueLocation,
                          subTitle: cubit.location?.address,
                          onTap: () async {
                            final location = await cubit.goToFieldPage(
                              fieldName: MosqueFormFieldName.location.name,
                              initialValue: cubit.location == null
                                  ? null
                                  : jsonEncode(
                                      cubit.location?.toJson(),
                                    ),
                            );

                            if (location == null) {
                              return;
                            }

                            cubit.location = location;
                          },
                        ),
                        // CreateMosqueListItem(
                        //   icon: Icons.access_time,
                        //   title: i18n.hintMosqueHours,
                        //   subTitle: cubit.hours?.toUserFriendlyString(),
                        //   onTap: () async {
                        //     final hours = await cubit.goToFieldPage(
                        //       fieldName: MosqueFormFieldName.hours.name,
                        //       initialValue: cubit.hours == null
                        //           ? null
                        //           : jsonEncode(
                        //               cubit.hours?.toJson(),
                        //             ),
                        //     );
                        //
                        //     if (hours == null) {
                        //       return;
                        //     }
                        //
                        //     cubit.hours = hours;
                        //   },
                        // ),
                        CreateMosqueListItem(
                          icon: Icons.contacts_outlined,
                          title: i18n.hintMosqueContactInfo,
                          subTitle: cubit.contactInfo?.toUserFriendlyString(),
                          isLast: true,
                          onTap: () async {
                            final contactInfo = await cubit.goToFieldPage(
                              fieldName: MosqueFormFieldName.contactInfo.name,
                              initialValue: cubit.contactInfo == null
                                  ? null
                                  : jsonEncode(
                                      cubit.contactInfo?.toJson(),
                                    ),
                            );

                            if (contactInfo == null) {
                              return;
                            }

                            cubit.contactInfo = contactInfo;
                          },
                        ),
                        const SizedBox(height: 20.0),
                        BlocBuilder<CreateMosquePageCubit,
                            CreateMosquePageState>(
                          bloc: cubit,
                          builder: (context, state) =>
                              state is CreateMosquePageStateLoading
                                  ? const PALoadingIndicator()
                                  : SujudButton(
                                      text: i18n.buttonComplete,
                                      outlined: false,
                                      onTap: () async => await cubit.create(),
                                    ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
