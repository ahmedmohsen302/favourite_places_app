import 'package:flutter/material.dart';

class NewPlaceView extends StatefulWidget {
  const NewPlaceView({super.key});

  @override
  State<NewPlaceView> createState() => _NewPlaceViewState();
}

class _NewPlaceViewState extends State<NewPlaceView> {
  final TextEditingController _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Place')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  gapPadding: 12,
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    style: BorderStyle.solid,
                    strokeAlign: 12,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Add place'),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
