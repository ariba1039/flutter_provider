import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void setCount() {
    _count++;
    notifyListeners();
  }
}























//ChangeNotifier works as a set state 
/*
ChangeNotifier is a simple class included in the Flutter SDK which provides change notification 
to its listeners.
 In other words, if something is a ChangeNotifier , you can subscribe to its changes. 
*/