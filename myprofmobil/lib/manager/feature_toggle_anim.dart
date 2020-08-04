import 'package:flutter/foundation.dart';

class ToggleBottomSheet with ChangeNotifier{

  bool _isAnimating = true;
  bool _agendaAnimating = true;
  bool get isAnimating => _isAnimating;
  bool get agendaAnimating => _agendaAnimating;

  void toggleAnimation(){
    _isAnimating = !_isAnimating;
    notifyListeners();
  }
  void toggleAgandaAnimating(){
    _agendaAnimating = !_agendaAnimating;
    notifyListeners();
  }
}