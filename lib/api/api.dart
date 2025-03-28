import 'package:hive_flutter/hive_flutter.dart';

class Api {
  static const String boxName = 'anime';

  static Future<void> initHive() async {
    await Hive.initFlutter();
    await Hive.openBox(boxName);
  }

  // 增加数据
  static Future<void> addData(String key, dynamic value) async {
    var box = Hive.box(boxName);
    await box.put(key, value);
  }
}
