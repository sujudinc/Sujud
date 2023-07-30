// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sujud/extensions/extensions.dart';

class SujudButton extends StatelessWidget {
  const SujudButton({
    required this.text,
    required this.onTap,
    this.isEnabled = true,
    this.outlineMode = true,
    this.prefix,
    this.suffix,
    super.key,
  });

  final String text;
  final GestureTapCallback onTap;
  final bool isEnabled;
  final bool outlineMode;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: isEnabled ? onTap : null,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: kIsWeb ? 10.0 : 0.0,
          ),
          decoration: outlineMode
              ? BoxDecoration(
                  color: context.theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: isEnabled ? Colors.black : Colors.grey,
                    width: 1.5,
                  ),
                )
              : BoxDecoration(
                  color: isEnabled ? Colors.black : Colors.grey,
                  borderRadius: BorderRadius.circular(10.0),
                ),
          constraints: const BoxConstraints(
            minHeight: 55.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 50.0,
                child: prefix,
              ),
              Text(
                text,
                style: TextStyle(
                  color: isEnabled
                      ? outlineMode
                          ? Colors.black
                          : context.theme.scaffoldBackgroundColor
                      : outlineMode
                          ? Colors.grey
                          : context.theme.scaffoldBackgroundColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 50.0,
                child: suffix,
              ),
            ],
          ),
        ),
      );
}
