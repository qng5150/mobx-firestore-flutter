import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile(
      {Key? key, required this.profileName, required this.imageUrl})
      : super(key: key);

  final String profileName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        imageUrl.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                      imageUrl,
                      errorBuilder: (context, object, stacktrace) =>
                          Container(),
                    ),
                  ),
                ),
              )
            : Container(),
        Text(profileName, style: Theme.of(context).textTheme.headlineMedium)
      ],
    );
  }
}
