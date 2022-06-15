import 'package:hive/hive.dart';
part 'clients_box.g.dart';
@HiveType(typeId: 1)
class ClientBox extends HiveObject{
 
  @HiveField(0)
  String? id;
  @HiveField(1)
 late String name;
  @HiveField(2)
  late String mail;
  @HiveField(3)
  late String technologie;
  @HiveField(4)
  late String webColor;
  @HiveField(5)
  late String comment;
  @HiveField(6)
  late String company;
  @HiveField(7)
  late String category;
}
