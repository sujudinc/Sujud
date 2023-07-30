// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:unicons/unicons.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/widgets/widgets.dart';

class MosqueSelectionPage extends StatefulWidget {
  const MosqueSelectionPage({super.key});

  @override
  State<MosqueSelectionPage> createState() => _MosqueSelectionPageState();
}

class _MosqueSelectionPageState extends State<MosqueSelectionPage> {
  final _navigatorUtility = GetIt.instance<NavigationUtilityAbstract>();

  @override
  Widget build(BuildContext context) => PAScaffold(
        largeTitle: true,
        includePadding: false,
        middle: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Mosques',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 2.0),
                Text(
                  'Birmingham, UK',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  UniconsLine.arrow_right,
                  size: 15.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
        kids: Kids(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: sampleMosques
                .map(
                  (mosque) => MosqueCard(
                    mosque: mosque,
                    onTap: () {
                      _navigatorUtility.goRoute(
                        route: _navigatorUtility
                            .navigationRoutes.home.jamaah.dashboard.itself,
                      );
                    },
                  ),
                )
                .toList(),
          ),
        ),
      );
}

class MosqueCard extends StatelessWidget {
  const MosqueCard({
    required this.mosque,
    required this.onTap,
    super.key,
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
                          const Icon(
                            UniconsLine.location_pin_alt,
                            size: 15.0,
                            color: Colors.grey,
                          ),
                          Text(
                            mosque.location.addressLine1,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
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
