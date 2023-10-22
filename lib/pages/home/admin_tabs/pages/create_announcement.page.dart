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
import 'package:sujud/models/models.dart';
import 'package:sujud/widgets/widgets.dart';

class CreateAnnouncementPage extends StatefulWidget {
  const CreateAnnouncementPage({super.key});

  @override
  State<CreateAnnouncementPage> createState() => _CreateAnnouncementPageState();
}

class _CreateAnnouncementPageState extends State<CreateAnnouncementPage> {
  final _formUtility = GetIt.instance.get<FormUtilityAbstract>(
    param1: GlobalKey<FormBuilderState>(),
  );
  final _createAnnouncementPageCubit = CreateAnnouncementPageCubit();

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return BlocProvider<CreateAnnouncementPageCubit>(
      create: (context) => _createAnnouncementPageCubit,
      child: BlocConsumer<CreateAnnouncementPageCubit,
          CreateAnnouncementPageState>(
        bloc: _createAnnouncementPageCubit,
        listener: (context, state) {},
        builder: (context, state) {
          final currentUser = _createAnnouncementPageCubit.currentUser;
          final selectedMosque = _createAnnouncementPageCubit.selectedMosque;
          final images = _createAnnouncementPageCubit.images;

          return PAScaffold(
            includePadding: false,
            platformAware: false,
            title: i18n.titleCreateAnnouncement,
            leading: IconButton(
              onPressed: () => _createAnnouncementPageCubit.back,
              icon: SujudIcon.close(),
            ),
            kids: Kids(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 5.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _Header(
                      currentUser: currentUser,
                      mosqueName: selectedMosque.name,
                    ),
                    const Divider(color: Colors.black38),
                    Expanded(
                      child: SingleChildScrollView(
                        child: FormBuilder(
                          key: _formUtility.formKey,
                          child: Column(
                            children: <Widget>[
                              FormBuilderTextField(
                                name: AnnouncementFormFieldName.title.name,
                                maxLines: 1,
                                maxLength: 40,
                                decoration: const InputDecoration(
                                  hintText: 'Title...',
                                  counterText: '',
                                  hintStyle: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FormBuilderTextField(
                                name: AnnouncementFormFieldName.content.name,
                                maxLines: null,
                                decoration: const InputDecoration(
                                  hintText: 'Details...',
                                  hintStyle: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                              if (images.isNotEmpty)
                                Container(
                                  margin: const EdgeInsets.only(top: 25.0),
                                  height: 175.0,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: images
                                        .map<Widget>(
                                          (image) => _MediaContainer(
                                            onTap: () => _removeImage(
                                              images.indexOf(image),
                                            ),
                                            image: image,
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(color: Colors.black38),
                    const SizedBox(height: 10.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        MouseRegion(
                          cursor:
                              state is CreateAnnouncementPageStateLoadingGallery
                                  ? SystemMouseCursors.progress
                                  : SystemMouseCursors.click,
                          child:
                              state is CreateAnnouncementPageStateLoadingGallery
                                  ? const PALoadingIndicator()
                                  : GestureDetector(
                                      child: SujudIcon.image(size: 30.0),
                                      onTap: () async => await _addImage(
                                        source: Source.gallery,
                                      ),
                                    ),
                        ),
                        const SizedBox(width: 10.0),
                        MouseRegion(
                          cursor:
                              state is CreateAnnouncementPageStateLoadingGallery
                                  ? SystemMouseCursors.progress
                                  : SystemMouseCursors.click,
                          child:
                              state is CreateAnnouncementPageStateLoadingCamera
                                  ? const PALoadingIndicator()
                                  : GestureDetector(
                                      child: SujudIcon.camera(size: 30.0),
                                      onTap: () async => await _addImage(
                                        source: Source.camera,
                                      ),
                                    ),
                        ),
                        const Spacer(),
                        // state is CreateAnnouncementPageStateLoadingSend
                        //     ? const PALoadingIndicator()
                        //     :
                        SujudButton(
                          outlined: false,
                          text: i18n.buttonSend,
                          onTap: () async => _createAnnouncement(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _addImage({required Source source}) async {
    await _createAnnouncementPageCubit.addImage(
      source: source,
      path: StoragePath.announcement,
    );
  }

  void _removeImage(int index) {
    _createAnnouncementPageCubit.removeImage(index);
  }

  Future<void> _createAnnouncement() async {
    if (!_formUtility.saveAndValidate()) {
      return;
    }

    _createAnnouncementPageCubit
      ..title = _formUtility.getValue(
        AnnouncementFormFieldName.title.name,
      )
      ..content = _formUtility.getValue(
        AnnouncementFormFieldName.content.name,
      )
      ..create();
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.currentUser,
    required this.mosqueName,
  });

  final User currentUser;
  final String mosqueName;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          children: <Widget>[
            Selfie(user: currentUser),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${currentUser.firstName} '
                    '${currentUser.lastName}',
                  ),
                  Text(mosqueName),
                ],
              ),
            ),
          ],
        ),
      );
}

class _MediaContainer extends StatelessWidget {
  const _MediaContainer({
    required this.onTap,
    required this.image,
  });

  final GestureTapCallback onTap;
  final AttributedFile image;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: 125.0,
          height: 175.0,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.memory(
                  image.file,
                  width: 125.0,
                  height: 175.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.all(
                    5.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  width: 25.0,
                  height: 25.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 2.0,
                    ),
                    child: SujudIcon.trash(
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

enum AnnouncementFormFieldName {
  title,
  content,
}
