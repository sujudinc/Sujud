import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PALoadingIndicator extends StatelessWidget {
  const PALoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) => Container(
        constraints: const BoxConstraints(
          minHeight: 55.0,
        ),
        child: Center(
          child: kIsWeb
              ? const CircularProgressIndicator()
              : Platform.isIOS
                  ? const CupertinoActivityIndicator()
                  : const CircularProgressIndicator(),
        ),
      );
}
