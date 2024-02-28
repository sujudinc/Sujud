// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/widgets/shared/sujud_button.dart';

class EmptyStateView extends StatelessWidget {
  const EmptyStateView({
    required this.title,
    required this.description,
    required this.buttonLabel,
    required this.onTap,
    this.image,
    super.key,
  });

  final String? image;
  final String title;
  final String description;
  final String buttonLabel;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (image != null)
              Container(
                margin: const EdgeInsets.only(
                  bottom: 25.0,
                ),
                child: Image.asset(
                  image!,
                  width: 300.0,
                ),
              ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25.0,
            ),
            SujudButton(
              text: buttonLabel,
              onTap: onTap,
            ),
          ],
        ),
      );
}
