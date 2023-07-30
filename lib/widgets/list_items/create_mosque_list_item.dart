import 'package:flutter/material.dart';

class CreateMosqueListItem extends StatelessWidget {
  const CreateMosqueListItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.subTitle,
    this.subChild,
    this.isLast = false,
    super.key,
  }) : assert(
          subTitle == null || subChild == null,
          "Can't provide both subTitle and subChild at the same time.",
        );

  final IconData icon;
  final String title;
  final GestureTapCallback onTap;
  final String? subTitle;
  final Widget? subChild;
  final bool isLast;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
            leading: Icon(
              icon,
              color: Colors.black,
            ),
            title: Text(
              title,
              style: TextStyle(
                color: subTitle != null || subChild != null
                    ? Colors.black
                    : Colors.black54,
              ),
            ),
            subtitle: Stack(
              children: <Widget>[
                if (subTitle != null)
                  Text(
                    subTitle!,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                if (subChild != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: subChild,
                  ),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                subTitle != null || subChild != null
                    ? Icons.check_circle
                    : Icons.chevron_right,
                color: subTitle != null || subChild != null
                    ? Colors.green
                    : Colors.black,
              ),
            ),
            contentPadding: const EdgeInsets.all(0.0),
            onTap: onTap,
          ),
          if (!isLast)
            const Divider(
              color: Colors.black54,
            ),
        ],
      );
}
