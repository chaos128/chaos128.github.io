import 'package:flutter/material.dart';
import 'package:flutter_app1/learn_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () => {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return LearnPage();
        }))
      },
      child: Text("Learn"),
    ));
  }
}
