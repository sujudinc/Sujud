import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class AnnouncementsSubtab extends StatefulWidget {
  const AnnouncementsSubtab({super.key});

  @override
  State<AnnouncementsSubtab> createState() => _AnnouncementsSubtabState();
}

class _AnnouncementsSubtabState extends State<AnnouncementsSubtab> {
  late final _homePageCubit = context.read<HomePageCubit>();

  @override
  Widget build(BuildContext context) {
    final selectedMosque = _homePageCubit.selectedMosque;

    return Scaffold(
      body: selectedMosque?.announcements == null ||
              selectedMosque!.announcements!.isEmpty
          ? _buildEmptyView(context)
          : _buildFeedView(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _homePageCubit.goToCreateAnnouncementPage,
      ),
    );
  }

  Widget _buildFeedView(BuildContext context) {
    final selectedMosque = _homePageCubit.selectedMosque;

    return ListView.builder(
      itemBuilder: (context, index) {
        final announcement = selectedMosque!.announcements![index];

        return ListTile(
          title: Text(announcement.title),
        );
      },
      itemCount: selectedMosque?.announcements?.length ?? 0,
    );
  }

  Widget _buildEmptyView(BuildContext context) {
    final i18n = context.i18n;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'No announcement yet...',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Reach out to your community by creating an announcement.',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 25.0,
          ),
          SujudButton(
            text: i18n.buttonCreateAnnouncement,
            onTap: () => _homePageCubit.goToCreateAnnouncementPage,
          ),
        ],
      ),
    );
  }
}
