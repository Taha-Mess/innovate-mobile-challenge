import 'package:flutter/material.dart';

import '../widgets/go_back_button.dart';

class NoteView extends StatelessWidget {
  final Map<String, String>? data;

  const NoteView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: const GoBackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 40),
            Text(
              data!['title'].toString(),
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: null,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Text(
              data!['content'].toString(),
              style: Theme.of(context).textTheme.bodyLarge,
              maxLines: null,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
