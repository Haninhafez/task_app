import 'package:flutter/material.dart';
import 'package:task_app/screens/home_screen.dart';

void main() {
  runApp(MangerTask());
}

class MangerTask extends StatelessWidget {
  const MangerTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
