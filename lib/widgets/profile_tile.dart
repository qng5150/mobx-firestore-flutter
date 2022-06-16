import 'package:flutter/material.dart';
import 'package:mobx_firestore_flutter/model/player_profile.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile(
      {Key? key, required this.profileName, required this.imageUrl})
      : super(key: key);

  final String profileName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:
          Text(profileName, style: Theme.of(context).textTheme.headlineMedium),
      subtitle: imageUrl.isNotEmpty ? Image.network(imageUrl) : Container(),
    );
  }
}