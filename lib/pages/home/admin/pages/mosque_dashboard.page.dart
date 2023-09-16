// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/widgets/widgets.dart';

class MosqueDashboardPage extends StatefulWidget {
  const MosqueDashboardPage({super.key});

  @override
  State<MosqueDashboardPage> createState() => _MosqueDashboardPageState();
}

class _MosqueDashboardPageState extends State<MosqueDashboardPage> {
  @override
  Widget build(BuildContext context) => PAScaffold(
        title: 'Hello',
        kids: Kids(
          child: ListView(
            children: const <Widget>[],
          ),
        ),
      );
}
