import 'package:flutter/material.dart';

import '../models/models.dart';
import 'widgets.dart';

class CreatePostContainerWidget extends StatelessWidget {
  final User currentUser;

  const CreatePostContainerWidget({@required this.currentUser});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWidget.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      child: ClipRRect(
        borderRadius: isDesktop ? BorderRadius.circular(10) : BorderRadius.zero,
        child: Container(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  ProfileAvatarWidget(imageUrl: currentUser.imageUrl),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'What\'s on your mind?',
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(height: 10, thickness: 0.5),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.videocam, color: Colors.red),
                      label: const Text('Live'),
                    ),
                    const VerticalDivider(width: 8),
                    FlatButton.icon(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.photo_library, color: Colors.green),
                      label: const Text('Photo'),
                    ),
                    const VerticalDivider(width: 8),
                    FlatButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.video_call,
                          color: Colors.purpleAccent),
                      label: const Text('Room'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
