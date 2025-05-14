import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlacesModel {
  final String id;
  final String title;

  PlacesModel({required this.title}) : id = uuid.v4();
}
