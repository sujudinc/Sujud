// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/models/models.dart';

class Selfie extends StatelessWidget {
  const Selfie({
    required this.user,
    super.key,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    final selfie = user.selfie;
    final initials = '${user.firstName[0]}${user.lastName[0]}';

    return selfie == null
        ? CircleAvatar(
            child: Text(initials),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(selfie),
          );
  }
}
