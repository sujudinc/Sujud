// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/configs/configs.dart';

class OnboardingSection extends StatelessWidget {
  const OnboardingSection({
    required this.arguments,
    super.key,
  });

  final OnboardingSectionArguments arguments;

  @override
  Widget build(BuildContext context) => Container(
      margin: kEdgeInsetsHor,
      child: Column(
        children: <Widget>[
          Text(
            arguments.title,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25.0),
          Expanded(
            child: Container(
              child: arguments.image != null
                  ? Image.asset(
                arguments.image!,
                fit: BoxFit.cover,
              )
                  : null,
            ),
          ),
          const SizedBox(height: 25.0),
          Text(
            arguments.description,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25.0),
        ],
      ));
}

class OnboardingSectionArguments {
  const OnboardingSectionArguments({
    required this.title,
    required this.description,
    this.image,
  });

  final String title;
  final String? image;
  final String description;
}
