import 'package:flutter/material.dart';

class NewRecordPage extends StatelessWidget {
  const NewRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Record'),
      ),
      body: const Center(child: (Text("New record page"))),
    );
  }
}
