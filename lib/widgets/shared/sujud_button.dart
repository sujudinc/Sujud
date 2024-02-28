// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/platform_aware/platform_aware.dart';

class SujudButton extends StatelessWidget {
  const SujudButton({
    required this.text,
    required this.onTap,
    this.isLoading = false,
    this.isEnabled = true,
    this.outlined = true,
    this.mouseCursor,
    this.prefix,
    this.suffix,
    super.key,
  });

  final String text;
  final GestureTapCallback onTap;
  final bool isLoading;
  final bool isEnabled;
  final bool outlined;
  final MouseCursor? mouseCursor;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) => MouseRegion(
        cursor: mouseCursor != null
            ? mouseCursor!
            : isEnabled
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
        child: GestureDetector(
          onTap: isEnabled ? onTap : null,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            decoration: outlined
                ? BoxDecoration(
                    // color: context.theme.scaffoldBackgroundColor,
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
              minWidth: 125.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                if (prefix != null)
                  SizedBox(
                    width: 50.0,
                    child: prefix,
                  ),
                isLoading
                    ? const PALoadingIndicator()
                    : Text(
                        text,
                        style: TextStyle(
                          color: isEnabled
                              ? outlined
                                  ? null
                                  : context.theme.scaffoldBackgroundColor
                              : outlined
                                  ? null
                                  : context.theme.scaffoldBackgroundColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                if (suffix != null)
                  SizedBox(
                    width: 50.0,
                    child: suffix,
                  ),
              ],
            ),
          ),
        ),
      );
}
