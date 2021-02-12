import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list_reso_coder/injection.dart';

import 'presentation/core/core.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
