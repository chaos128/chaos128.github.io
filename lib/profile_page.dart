import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('item ${index + 1} '),
          leading: Icon(Icons.abc),
          trailing: Icon(Icons.access_alarm),
          onTap: () {
            debugPrint("${index + 1}");
          },
        );
      },
    );
  }
}
