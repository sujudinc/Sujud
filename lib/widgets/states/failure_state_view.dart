import 'package:flutter/material.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/shared/sujud_button.dart';

class FailureStateView extends StatelessWidget {
  const FailureStateView({
    required this.description,
    required this.onTap,
    this.image,
    super.key,
  });

  final String? image;
  final String description;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return Container(
      color: Colors.redAccent,
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
            i18n.errorTitle,
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
          SujudButton(
            text: i18n.retry,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
