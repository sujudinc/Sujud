// 📦 Package imports:
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// 🌎 Project imports:
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/widgets/widgets.dart';

class MosquesPage extends StatefulWidget {
  const MosquesPage({super.key});

  @override
  State<MosquesPage> createState() => _MosquesPageState();
}

class _MosquesPageState extends State<MosquesPage> {
  final _mosqueSelectionCubit = MosquesPageCubit();

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return BlocProvider<MosquesPageCubit>(
      create: (context) => _mosqueSelectionCubit,
      child: PAScaffold(
        largeTitle: true,
        includePadding: false,
        middle: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              i18n.titleMosques,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        kids: Kids(
          child: BlocBuilder<MosquesPageCubit, MosquesPageState>(
            builder: (context, state) => state.when(
              loading: LoadingStateView.new,
              empty: () => Column(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                    child: DropdownSearch<String>(
                      selectedItem: _mosqueSelectionCubit.selectedCity,
                      items: kAvailableCities,
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        baseStyle: TextStyle(
                          fontSize: 12.0,
                        ),
                        textAlignVertical: TextAlignVertical.center,
                      ),
                      dropdownButtonProps: DropdownButtonProps(
                        icon: SujudIcon.rightArrow(
                          size: 15.0,
                        ),
                      ),
                      popupProps:
                          const PopupPropsMultiSelection.modalBottomSheet(),
                    ),
                  ),
                  Expanded(
                    child: EmptyStateView(
                      title: i18n.errorTitle,
                      description: 'No Mosques here...',
                      buttonLabel: 'Change City',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              ready: (mosques) => Column(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                    child: DropdownSearch<String>(
                      selectedItem: _mosqueSelectionCubit.selectedCity,
                      items: kAvailableCities,
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        baseStyle: TextStyle(
                          fontSize: 12.0,
                        ),
                        textAlignVertical: TextAlignVertical.center,
                      ),
                      dropdownButtonProps: DropdownButtonProps(
                        icon: SujudIcon.rightArrow(
                          size: 15.0,
                        ),
                      ),
                      popupProps:
                          const PopupPropsMultiSelection.modalBottomSheet(),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(
                        top: 25.0,
                      ),
                      itemBuilder: (context, index) {
                        final mosque = mosques[index];

                        return _MosqueCard(
                          mosque: mosque,
                          onTap: () => const JamaahPrayerTimesRoute().go(
                            context,
                          ),
                        );
                      },
                      itemCount: mosques.length,
                    ),
                  ),
                ],
              ),
              failure: (error) => FailureStateView(
                description: error.name,
                onTap: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MosqueCard extends StatelessWidget {
  const _MosqueCard({
    required this.mosque,
    required this.onTap,
  });

  final Mosque mosque;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          bottom: 25.0,
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                if (mosque.images.isNotEmpty)
                  SizedBox(
                    height: 150.0,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      child: Image.network(
                        mosque.images.first,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  height: 75.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        mosque.name,
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SujudIcon.location(
                            size: 15.0,
                          ),
                          // Text(
                          //   mosque.address.addressLine1,
                          //   style: const TextStyle(
                          //     fontSize: 12.0,
                          //     color: Colors.grey,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
