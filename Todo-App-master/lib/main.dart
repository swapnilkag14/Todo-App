import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_api/provider/request_provider.dart';
import 'package:todo_app_api/views/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RequestProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData.light( useMaterial3: true),
      
      home: const HomeScreen(),
    );
  }
}
