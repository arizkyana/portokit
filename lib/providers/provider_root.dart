import 'package:flutter/material.dart';

class ProviderStateRoot with ChangeNotifier {
  late String _message;

  String get message {
    return _message;
  }

  void setMessage(String newMessage) {
    _message = newMessage;
    notifyListeners();
  }
}
