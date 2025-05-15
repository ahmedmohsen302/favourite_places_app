import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key, required this.onPickedImage});
  final void Function(File image) onPickedImage;

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  File? selectedImage;
  void takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 600,
    );

    if (pickedImage == null) {
      return;
    }
    setState(() {
      selectedImage = File(pickedImage.path);
    });
    widget.onPickedImage(selectedImage!);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(6),
      child:
          selectedImage != null
              ? GestureDetector(
                onTap: takePicture,
                child: Image.file(
                  selectedImage!,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              )
              : TextButton.icon(
                onPressed: takePicture,
                label: Text('Take a picture'),
                icon: Icon(Icons.camera_alt),
              ),
    );
  }
}
