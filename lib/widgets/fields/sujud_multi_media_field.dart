// 🎯 Dart imports:
import 'dart:typed_data';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/misc/value.cubit.dart';
import 'package:sujud/extensions/extensions.dart';

class SujudMultiMediaField extends StatefulWidget
    implements SujudFormFieldAbstract {
  const SujudMultiMediaField({
    required this.formKey,
    required this.fieldName,
    this.initialValue,
    this.onChanged,
    super.key,
  });

  final GlobalKey<FormBuilderState> formKey;
  final String fieldName;
  final List<String>? initialValue;
  final ValueChanged<List<Uint8List?>?>? onChanged;

  @override
  State<SujudMultiMediaField> createState() => _SujudMultiMediaFieldState();
}

class _SujudMultiMediaFieldState extends State<SujudMultiMediaField> {
  final _media = GetIt.instance.get<MediaUtilityAbstract>();
  final _currentImageValueCubit = ValueCubit<int>(0);
  final _currentImageNotifier = ValueNotifier<int>(0);
  final _pageController = PageController();

  @override
  void dispose() {
    super.dispose();

    _pageController.dispose();
    _currentImageValueCubit.close();
    _currentImageNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return FormBuilderFieldDecoration<List<Uint8List?>>(
      name: widget.fieldName,
      decoration: const InputDecoration(
        errorStyle: TextStyle(
          fontSize: 0.0,
          height: 0.0,
        ),
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
      onChanged: widget.onChanged,
      builder: (field) => Column(
        children: <Widget>[
          Container(
            decoration: _errorText == null
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black45,
                      width: 1.5,
                    ),
                  )
                : BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
            height: 200.0,
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Stack(
              children: <Widget>[
                PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _currentImageValueCubit.value = index;
                    _currentImageNotifier.value = index;
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: _images.length + 1,
                  itemBuilder: (context, index) => index == 0
                      ? IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () async => _openImagePicker(
                            context,
                            field,
                          ),
                        )
                      : Image.memory(
                          _images[index - 1],
                          fit: BoxFit.cover,
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: CirclePageIndicator(
                    itemCount: _images.length + 1,
                    currentPageNotifier: _currentImageNotifier,
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<ValueCubit<int>, ValueState<int>>(
            bloc: _currentImageValueCubit,
            builder: (context, state) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: _currentImageNotifier.value != 0
                      ? () => _pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          )
                      : null,
                  child: Text(i18n.buttonPrevious),
                ),
                state.value < _images.length
                    ? TextButton(
                        onPressed: () => _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        ),
                        child: Text(i18n.buttonNext),
                      )
                    : TextButton(
                        onPressed: () async => await _openImagePicker(
                          context,
                          field,
                        ),
                        child: Text(i18n.buttonAddImage),
                      ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  String? get _errorText {
    final errorText =
        widget.formKey.currentState?.fields[widget.fieldName]?.errorText;

    return errorText;
  }

  List<Uint8List> get _images {
    final images = widget.formKey.currentState?.fields[widget.fieldName]?.value;

    return images ?? <Uint8List>[];
  }

  Future<void> _openImagePicker(
    BuildContext context,
    FormFieldState field,
  ) async {
    final pickedFile = await _media.imageFromGallery;

    if (pickedFile == null) {
      return;
    }

    field.didChange([..._images, pickedFile]);
  }
}
