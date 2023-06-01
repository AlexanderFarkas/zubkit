import 'package:flutter/widgets.dart';

extension WidgetListX on Iterable<Widget> {
  List<Widget> separated(Widget separator, {bool growable = false}) {
    return _separated(separator).toList(growable: growable);
  }

  Iterable<Widget> _separated(Widget separator) sync* {
    int index = 0;
    for (final element in this) {
      yield element;
      if (++index != length) {
        yield separator;
      }
    }
  }
}
