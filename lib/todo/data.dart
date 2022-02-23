import 'dart:collection';

import 'package:flutter/material.dart';
import 'model.dart';

class Data with ChangeNotifier {
  final List<Model> _model = [
    Model(todoName: "Buying fish from market"),
    Model(todoName: "Buying fish from market")
  ];

  UnmodifiableListView<Model> get todo => UnmodifiableListView(_model);

  void addNewItem(String item) {
    final newTask = Model(todoName: item);
    _model.add(newTask);
    notifyListeners();
  }

  void deleteItem(Model item) {
    _model.remove(item);
    notifyListeners();
  }
}
