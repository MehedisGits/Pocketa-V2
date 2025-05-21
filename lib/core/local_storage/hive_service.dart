import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveService{
  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
  }
  static Future<void> openBox<T>(String boxName) async {
    await Hive.openBox<T>(boxName);
  }
}