// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// 🌎 Project imports:
import 'package:sujud/widgets/widgets.dart';

class MediaPage extends StatelessWidget {
  const MediaPage({
    required this.url,
    super.key,
  });

  final String url;

  @override
  Widget build(BuildContext context) => PAScaffold(
        includePadding: false,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SujudIcon.close(
            color: Colors.white,
          ),
        ),
        kids: Kids(
          child: Center(
            child: Hero(
              tag: url,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: url,
                ),
              ),
            ),
          ),
        ),
      );
}
