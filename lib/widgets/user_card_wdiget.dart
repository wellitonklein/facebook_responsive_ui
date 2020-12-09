import 'package:flutter/material.dart';

import '../models/models.dart';
import 'profile_avatar_widget.dart';

class UserCardWidget extends StatelessWidget {
  final User user;

  const UserCardWidget({@required this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatarWidget(imageUrl: user.imageUrl),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              user.name,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
