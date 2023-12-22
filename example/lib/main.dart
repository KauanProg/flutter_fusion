import 'package:flutter/material.dart';
import 'package:flutter_fusion/flutter_fusion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FusionElevatedButton(texto: 'abc', onPressed: () {}),
            FusionOutlinedButton(texto: 'abc', onPressed: () {}),
            FusionFilledButton(texto: 'abc', onPressed: (){}),
            FusionFilledTonalButton(texto: 'abc', onPressed: (){}),
          ],
        ),
      ),
    );
  }
}