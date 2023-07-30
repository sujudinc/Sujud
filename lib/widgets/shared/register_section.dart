import 'package:flutter/material.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({
    required this.arguments,
    super.key,
  });

  final RegisterSectionArguments arguments;

  @override
  Widget build(BuildContext context) => Container(
    margin: kEdgeInsetsHor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          arguments.title,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 25.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ...arguments.children,
          ],
        ),
      ],
    ),
  );
}

class RegisterSectionArguments {
  const RegisterSectionArguments({
    required this.title,
    required this.children,
  });

  final String title;
  final List<SujudFormFieldAbstract> children;
}
