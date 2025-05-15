import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlacesModel {
  final String id;
  final String title;
  final File image;

  PlacesModel({required this.title, required this.image}) : id = uuid.v4();
}
