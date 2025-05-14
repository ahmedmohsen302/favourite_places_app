import 'package:favourite_places_app/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPlaceView extends ConsumerStatefulWidget {
  const NewPlaceView({super.key});

  @override
  ConsumerState<NewPlaceView> createState() => _NewPlaceViewState();
}

class _NewPlaceViewState extends ConsumerState<NewPlaceView> {
  final TextEditingController _titleController = TextEditingController();

  void savePlace() {
    final enteredTitle = _titleController.text;
    if (enteredTitle.isEmpty) {
      return;
    }
    ref.read(userPlacesProvider.notifier).addPlace(enteredTitle);
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

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
              onPressed: savePlace,
              label: Text('Add place'),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
