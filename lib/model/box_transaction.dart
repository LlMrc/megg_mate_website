import 'package:hive/hive.dart';
import 'package:megg_mate_website/model/clients_box.dart';

class Boxes {
  static Box<ClientBox> getTransaction() => Hive.box<ClientBox>('clientsbox');
}
