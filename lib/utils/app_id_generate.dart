import 'package:uuid/uuid.dart';

class Id {
  static const _uuid = Uuid();

  // Generate a unique ID using UUID v4
  static String generate() {
    return _uuid.v4();
  }
}
