import 'package:flutter/material.dart';
import 'AddTodo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Today`s Schedule',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  AddTodoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


