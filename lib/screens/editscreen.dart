import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(),
            TextFormField(),
            ElevatedButton(
              onPressed: () {},
              child: Text("Update"),
            ),
          ],
        ),
      ),
    );
  }
}
