import 'package:flutter/foundation.dart';

void f(String text, var value) {
  if (kDebugMode) {
    debugPrint('$text = $value');
  }
}