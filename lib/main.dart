import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/view_models/app_view_model.dart';
import 'package:todoapp/views/task_page.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=> AppViewModel(),child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TaskPage(),
    );
  }
}


