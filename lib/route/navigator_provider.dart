import 'package:flutter/cupertino.dart';

class NavigatonProvider extends ChangeNotifier {
  bool _isCollapsed = false;
  bool get isCollapsed => _isCollapsed;

  void toggleCollaps() {
    _isCollapsed = !_isCollapsed;
    notifyListeners();
  }
}
