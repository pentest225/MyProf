import 'package:flutter/foundation.dart';

class ToggleBottomSheet with ChangeNotifier{

  bool _isAnimating = true;
  bool get isAnimating => _isAnimating;

  void toggleAnimation(){
    _isAnimating = !_isAnimating;
    notifyListeners();
  }
}