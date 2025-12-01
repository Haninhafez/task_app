import 'package:flutter/material.dart';

class NoTasks extends StatelessWidget {
  const NoTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Image.asset(
            'assets/images/icons8-checkmark-64.png',
            fit: BoxFit.cover,
          ),
        ),
        Text(
          "No tasks yet",
          style: TextStyle(
            color: Color(0xff7D8381),
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "Add a task to get started",
          style: TextStyle(
            color: Color.fromARGB(220, 125, 131, 129),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
