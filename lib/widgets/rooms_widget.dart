import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../models/models.dart';
import 'widgets.dart';

class RoomsWidget extends StatelessWidget {
  final List<User> onlineUsers;

  const RoomsWidget({@required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWidget.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      child: ClipRRect(
        borderRadius: isDesktop ? BorderRadius.circular(10) : BorderRadius.zero,
        child: Container(
          height: 60,
          color: Colors.white,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
            scrollDirection: Axis.horizontal,
            itemCount: 1 + onlineUsers.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _CreateRoomButton(),
                );
              }

              final user = onlineUsers[index - 1];

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ProfileAvatarWidget(
                  imageUrl: user.imageUrl,
                  isActive: true,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.white,
      borderSide: BorderSide(width: 3, color: Colors.blueAccent[100]),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          Icon(
            Icons.video_call,
            size: 35,
            color: Colors.purple,
          ),
          const SizedBox(width: 4),
          const Text('Create\nRoom'),
        ],
      ),
    );
  }
}
