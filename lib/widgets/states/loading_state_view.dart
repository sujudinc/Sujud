// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingStateView extends StatelessWidget {
  const LoadingStateView({
    this.description,
    super.key,
  });

  final String? description;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: LoadingAnimationWidget.fourRotatingDots(
                color: Colors.black,
                size: 30.0,
              ),
            ),
            if (description != null)
              Text(
                description!,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      );
}
